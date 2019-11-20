require 'test_helper'
require 'faker'

class ChartTest < ActiveSupport::TestCase
  test "should not save chart without all fields" do
    chart = Chart.new
    assert_not chart.save, "Saved the chart without all fields"
  end

  test "should not save owner without symptoms" do
    chart = Chart.new
    pet = Pet.first
    chart.treatment = Faker::Lorem.sentences
    chart.date_attendance = Faker::Date.in_date_period
    chart.pet_id = pet.id
    assert_not chart.save, "Saved the chart without a symptoms"
  end

  test "should not save owner without treatment" do
    chart = Chart.new
    pet = Pet.first
    chart.symptoms = Faker::Lorem.sentences
    chart.date_attendance = Faker::Date.in_date_period
    chart.pet_id = pet.id
    assert_not chart.save, "Saved the chart without a treatment"
  end

  test "should not save chart without date_attendance" do
    chart = Chart.new
    pet = Pet.first
    chart.symptoms = Faker::Lorem.sentences
    chart.treatment = Faker::Lorem.sentences
    chart.pet_id = pet.id
    assert_not chart.save, "Saved the chart without a date_attendance"
  end

  test "should not save chart with date_attendance not date valid" do
    chart = Chart.new
    pet = Pet.first
    chart.symptoms = Faker::Lorem.sentences
    chart.treatment = Faker::Lorem.sentences
    chart.date_attendance = 'Test'
    chart.pet_id = pet.id
    assert_not chart.save, "Saved the chart with a date_attendance invalid"
  end

  test "should not save chart without pet_id" do
    chart = Chart.new
    chart.symptoms = Faker::Lorem.sentences
    chart.treatment = Faker::Lorem.sentences
    chart.date_attendance = Faker::Date.in_date_period
    assert_not chart.save, "Saved the chart with a pet_id"
  end

  test "should not save chart with pet_id equal to string" do
    chart = Chart.new
    chart.symptoms = Faker::Lorem.sentences
    chart.treatment = Faker::Lorem.sentences
    chart.date_attendance = Faker::Date.in_date_period
    chart.pet_id = Faker::Name.name
    assert_not chart.save, "Saved the chart with a pet_id equal to string"
  end

  test "should save chart" do
    chart = Chart.new
    pet = Pet.first
    chart.symptoms = Faker::Lorem.sentences
    chart.treatment = Faker::Lorem.sentences
    chart.date_attendance = Faker::Date.in_date_period
    chart.pet_id = pet.id
    assert chart.save, "Not Saved Chart"
  end

end
