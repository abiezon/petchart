require 'test_helper'
require 'faker'

class OwnerTest < ActiveSupport::TestCase
  test "should not save owner without name and email" do
    owner = Owner.new
    assert_not owner.save
  end

  test "should not save owner with name and without email" do
    owner = Owner.new
    owner.name = Faker::Name.name
    assert_not owner.save
  end

  test "should not save owner with email and without name" do
    owner = Owner.new
    owner.email = Faker::Internet.email
    assert_not owner.save
  end

  test "should not save owner with name less than 5 characters" do
    owner = Owner.new
    owner.name = 'tes'
    owner.email = Faker::Internet.email
    assert_not owner.save
  end

  test "should not save owner with name and email invalid" do
    owner = Owner.new
    owner.name = Faker::Name.name
    owner.email = 'teste'
    assert_not owner.save
  end

  test "must save type with full name and email" do
    owner = Owner.new
    owner.name = Faker::Name.name
    owner.email = Faker::Internet.email
    assert owner.save
  end

  
end
