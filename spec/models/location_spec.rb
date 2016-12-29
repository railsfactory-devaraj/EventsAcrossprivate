require 'rails_helper'

RSpec.describe Location, type: :model do
  it "check location attributes" do
  	location = Location.create(line1: "lane1",line2: "lane2",city: "Chennai",country: "India",pin: "600038")
  	expect(location).to have_attributes(:line1 => "lane1",:line2 => "lane2",:city => "Chennai",:country => "India",:pin => "600038")
  end
  it "is not valid without a city" do
  	location = Location.new(city: nil)
  	expect(location).to_not be_valid
  	expect(location.errors[:city]).to include("can't be blank")
  end
  it "is not valid without a country" do
  	location = Location.new(country: nil)
  	expect(location).to_not be_valid
  	expect(location.errors[:country]).to include("can't be blank")
  end
  it "is not valid without a pin" do
  	location = Location.new(pin: nil)
  	expect(location).to_not be_valid
  	expect(location.errors[:pin]).to include("can't be blank")
  end
end
