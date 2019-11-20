class Owner < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5, message: "Precisa ter no mínimo 5 letras" }
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
