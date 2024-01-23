Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get "lists", to: "lists#index"
  # # get "/lists/:id", to: "lists#show"
  # get "lists/new", to: "lists#new"
  # post "lists", to: "lists#create"
  # patch "lists/:id", to: "lists#update"
  # get "/lists/:id/edit", to: "lists#edit"

  # delete "/lists/:id", to: "lists#destroy"
  # Defines the root path route ("/")

  resources :lists, only: [:index, :show, :new, :create, :update, :destroy] do
    resources :bookmarks
  end

  root to: "lists#index"

end
