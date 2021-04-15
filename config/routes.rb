Rails.application.routes.draw do
  resources :investigadors
  resources :cros
  resources :areas
  resources :laboratorios
  resources :estudios
  resources :especialidads
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "estudios#index"
end
