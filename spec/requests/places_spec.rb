require "rails_helper"

RSpec.describe "host api", type: :request do
	describe "/api/places/search" do

		before(:each) do
			@host = Host.create!(name: "Bob", profile_url: "https://api.adorable.io/avatars/285/cat%40adorable.io.png")
			@chi_place = Place.create!(city: "Chicago, IL", price: 30, place_type: "shared", host_id: @host.id)
			@ny_place = Place.create!(city: "New York, NY", price: 40, place_type: "private_room", host_id: @host.id)
			@sf_place = Place.create!(city: "San Francisco, CA", price: 50, place_type: "house", host_id: @host.id)
		end

		context "search by city" do
			it "returns expected results", :focus do
				get "/api/places/search", params: { city: "Chicago, IL"}
				result = JSON.parse(response.body)
				expect(result.size).to eq(1)
				expect(result.first["id"]).to eq(@chi_place.id)
			end
		end

		context "search by place type" do
			it "returns expected results" do
				get "/api/places/search", params: { place_type: "house"}
				result = JSON.parse(response.body)
				expect(result.size).to eq(1)
				expect(result.first["id"]).to eq(@sf_place.id)
			end
		end

		context "search by price" do
			it "returns expected results" do
				get "/api/places/search", params: { max_price: 40 }
				result = JSON.parse(response.body)
				expect(result.size).to eq(2)
				expect(result.map{|p| p["id"]}).to include(@chi_place.id, @ny_place.id)
			end
		end
	end

end