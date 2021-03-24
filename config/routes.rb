Rails.application.routes.draw do
  get '/businesses', to: 'businesses#index'


  get '/bakeries', to: 'bakeries#index'
  get '/bakeries/:id', to: 'bakeries#show'
  get '/bakeries/:id/pastries', to: 'bakeries#pastries'

  get '/pastries', to: 'pastries#index'
  get '/pastries/:id', to: 'pastries#show'
end
