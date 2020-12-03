require 'sidekiq/web'
Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  root 'home#index'
  post 'home/update', to: 'home#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
