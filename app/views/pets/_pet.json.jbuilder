json.extract! pet, :id, :name, :birth, :breed, :kind_id, :owner_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
