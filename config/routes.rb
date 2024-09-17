require 'sidekiq/web'

Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]

  
# or require 'sidekiq/pro/web'
# or require 'sidekiq-ent/web'
  mount Sidekiq::Web => "/sidekiq" # mount Sidekiq::Web in your Rails app

end
