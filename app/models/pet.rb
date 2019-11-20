class Pet < ApplicationRecord
  belongs_to :kind
  belongs_to :owner

  validates :name, presence: true
  validates :birth, presence: true
  validates :breed, presence: true
end
