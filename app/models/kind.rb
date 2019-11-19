class Kind < ApplicationRecord
  validates :description, presence: true,
                          length: { minimum: 3 }
end
