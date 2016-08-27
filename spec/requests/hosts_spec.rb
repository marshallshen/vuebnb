require "rails_helper"

RSpec.describe "host api", type: :request do
	describe "/api/hosts/:host_id" do
		it "returns a host" do
			host = Host.create!(name: "Bob", profile_url: "https://api.adorable.io/avatars/285/cat%40adorable.io.png")
			get "/api/hosts/#{host.id}"

			result = JSON.parse(response.body)
			expect(result["id"]).to eq(host.id)
		end
	end

end