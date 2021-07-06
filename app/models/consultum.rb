class Consultum < ApplicationRecord
  belongs_to :estudio

  validates :asunto, presence: true
  validates :texto, presence: true
  validates :estudio, presence: true

  scope :pendientes_en_estudio,-> (estudio_id) { where(estudio_id: estudio_id, leido: false) }
end
