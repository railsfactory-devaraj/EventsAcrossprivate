require 'rails_helper'

RSpec.describe EventsController, type: :controller do
	it "check the status code" do
		get :index
		response_body = JSON.parse response.body
		expect(response_body['status_code']).to eq 200
	end
	it "check responce events" do
		get :index
		response_body = JSON.parse response.body
		expect(response_body['data']).to be_kind_of(Array)
	end
	it "check events types" do
		event = Event.new(title: "sample event",description: "sample description", starts_at: Date.today, ends_at: Date.today)
		location = Location.create!(line1: "lane1",line2: "lane2",city: "Chennai",country: "India",pin: "600038")
		event.locations << location
		event.save!
		get :index
		response_body = JSON.parse response.body
		expect(response_body['data']).to be_kind_of(Array)
		expect(response_body['data'].last).to be_kind_of(Hash)
	end
end
