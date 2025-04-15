Rails.application.routes.draw do
  # Root route (home page)
  root 'profile#home'
  
  # Other routes
  get 'about', to: 'profile#about'
  get 'portfolio', to: 'profile#portfolio'
  get 'movies', to: 'profile#movies', as: :movies
  get 'songs', to: 'profile#songs', as: :songs
  get 'books', to: 'profile#books', as: :books
  
  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA routes
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end