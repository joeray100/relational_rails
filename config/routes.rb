Rails.application.routes.draw do
  get '/businesses', to: 'businesses#index'


  get '/bakeries', to: 'bakeries#index'
  get '/bakeries/:id', to: 'bakeries#show'

  get '/pastries', to: 'pastries#index'
    get '/pastries/:id', to: 'pastries#show'
end
