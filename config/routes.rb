Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'lists#index'

  resources :lists, only: %w[index show new create] do
    resources :bookmarks, only: %w[index new create]
  end
  resources :bookmarks, only: [:destroy]
end
