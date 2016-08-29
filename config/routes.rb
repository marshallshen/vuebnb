Rails.application.routes.draw do
  root to: 'home#show'
  namespace :api do
    get 'hosts/:id', to: 'hosts#show'
    get 'places/search', to: 'places#search'
  end
end
