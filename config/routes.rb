Rails.application.routes.draw do
  resources :sexuality_labels
  resources :gender_labels
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#index"
end
