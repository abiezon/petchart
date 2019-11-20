class Chart < ApplicationRecord
  belongs_to :pet
  validates :symptoms, presence: true
  validates :treatment, presence: true
  validates :date_attendance, presence: true
  validates :pet_id, presence: true
end
