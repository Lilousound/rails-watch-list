Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :movies, only: [ :index ]
  resources :lists, only: [ :index, :show, :create, :new, :destroy ]
end
