Rails.application.routes.draw do
  resources :posts
  resources :events
  resources :movies
  resources :photos do
    member do
      get "addapic"
    end
  end

  resources :videos
  resources :musicreleases do
    member do
      get "addasong"
    end
  end
  get "posts/title"
  get "posts/content"
  get "posts/author"
  get "posts/pictext"
  get "posts/pic"
  get "hi", to:"music#index"
  get "hey", to: "welcome#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "welcome#index"
end
