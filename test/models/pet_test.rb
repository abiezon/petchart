require 'test_helper'
require 'faker'

class PetTest < ActiveSupport::TestCase
  test "should not save pet without name" do
    pet = Pet.new
    assert_not pet.save
  end

  test "should not save pet without birth" do
    pet = Pet.new
    pet.name = Faker::Name.name
    assert_not pet.save
  end

  test "should not save pet without breed" do
    pet = Pet.new
    pet.name = Faker::Name.name
    pet.birth = Faker::Date.birthday
  
    assert_not pet.save
  end

  test "should save pet" do
    pet = Pet.new
    pet.name = Faker::Name.name
    pet.birth = Faker::Date.birthday
    pet.breed = Faker::Creature::Dog.breed

    assert_not pet.save
  end

end
