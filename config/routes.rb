Rails.application.routes.draw do
  get "signup" => "users#new"
  get "login" => "sessions#new"
  get "logout" => "sessions#destroy" # make logout call the destroy inside sessiosn controller
  resources :users, except: [:index, :new]
  resources :sessions, except: [:index, :edit, :update, :show, :new, :destroy]

  # resources :tasks - link the 7 actions - index, create, etc. in controller
  resources :tasks do # nesting notes into the tasks
    resources :notes
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "sites#index"
end
