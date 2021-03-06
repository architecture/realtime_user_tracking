Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create]
    end
  end
  get '*path', to: 'pages#index', via: :all

  mount ActionCable.server => '/cable'
end
