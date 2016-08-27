Rails.application.routes.draw do
	namespace :api do
		get "hosts/:id", to: "hosts#show"
		get "places/search", to: "places#search"
	end
end
