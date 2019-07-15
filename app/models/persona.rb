class Persona < ApplicationRecord
  belongs_to :user

  validates :cedula, presence: true
  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :direccion, presence: true
  validates :cedula, uniqueness: true
end
