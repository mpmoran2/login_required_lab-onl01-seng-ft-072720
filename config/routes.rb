Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "sessions#new"

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/homepage', to: "sessions#homepage"
  post '/logout', to: "sessions#destroy"
  get '/secrets', to: "secrets#show"
end
