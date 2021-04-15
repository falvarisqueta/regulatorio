class Estudio < ApplicationRecord
  include Filterable

  belongs_to :especialidad
  belongs_to :laboratorio
  belongs_to :area
  belongs_to :investigador
  belongs_to :cro

  validates :nombre, :especialidad_id, :laboratorio_id, :area_id, :investigador_id, :cro_id, :codigo, presence: true
  validates :nombre, :codigo, uniqueness: true
  validates :commitment, numericality: true, allow_nil: true

  scope :filter_by_nombre, -> (nombre) { where('LOWER(nombre) like ?', "#{nombre.downcase}%") }
  scope :filter_by_codigo, -> (codigo) { where('LOWER(codigo) like ?', "#{codigo.downcase}%") }
  scope :filter_by_estado, -> (estado) { where(estado: estado) }
  scope :filter_by_area_id, -> (area_id) { where(area_id: area_id) }
  scope :filter_by_especialidad_id, -> (especialidad_id) { where(especialidad_id: especialidad_id) }
  scope :filter_by_laboratorio_id, -> (laboratorio_id) { where(laboratorio_id: laboratorio_id) }
  scope :filter_by_cro_id, -> (cro_id) { where(cro_id: cro_id) }
  scope :filter_by_investigador_id, -> (investigador_id) { where(investigador_id: investigador_id) }

  enum estado: [:factibilidades, :seleccionado, :comite, :anmat_ccis, :on_going, :suspendido]
  enum contrato: [:en_negociacion, :firmado]
end
