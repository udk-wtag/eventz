Rails.application.routes.draw do
  root 'events#index'

  resources :events do
    resources :registrations
  end

  resources :users
  get "signup", to: "users#new"

  resource :session, only: [:new, :create, :destroy]


  # get 'events' => 'events#index'
  # get 'events/new' => 'events#new'
  # get 'events/:id' => 'events#show', as: 'event'
  # get 'events/:id/edit' => 'events#edit', as: 'edit_event'
  # patch 'events/:id' => 'events#update'
end
