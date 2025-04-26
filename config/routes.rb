Rails.application.routes.draw do
  resources :contact_lists
  get "up" => "rails/health#show", as: :rails_health_check

  root "contact_lists#index"
end
