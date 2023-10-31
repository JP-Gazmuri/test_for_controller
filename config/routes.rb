Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :tests do
    get 'start', on: :collection
    get 'get_pass', on: :collection
  end

  resources :records

  root "records#index"
end
