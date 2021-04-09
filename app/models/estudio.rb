class Estudio < ApplicationRecord
  include Filterable

  belongs_to :especialidad
  belongs_to :laboratorio

  validates :nombre, :especialidad_id, :laboratorio_id, presence: true

  scope :filter_by_nombre, -> (nombre) { where('nombre like ?', "#{nombre}%") }
  scope :filter_by_estado, -> (estado) { where(estado: estado) }
  scope :filter_by_especialidad_id, -> (especialidad_id) { where(especialidad_id: especialidad_id) }
  scope :filter_by_laboratorio_id, -> (laboratorio_id) { where(laboratorio_id: laboratorio_id) }

  enum estado: [:seleccionado, :on_going, :comite, :anmat_ccis, :suspendido, :on_hold]
end
