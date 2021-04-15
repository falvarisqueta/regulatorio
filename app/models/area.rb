class Area < ApplicationRecord
  validates :nombre, presence: true
  validates :nombre, uniqueness: true
end
