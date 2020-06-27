Rails.application.routes.draw do
  get "/login", to: 'sessions#new'
  get "/show", to: 'secrets#show'
end
