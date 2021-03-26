Rails.application.routes.draw do
  get '/businesses', to: 'businesses#index'
  get '/businesses', to: 'businesses#create'
  get '/businesses/:id', to: 'businesses#show'
  # get 'businesses/:id/employees', to: 'businesses#employees'

  get '/employees', to: 'employees#index'
  get '/employees/:id', to: 'employees#show'

  get '/bakeries', to: 'bakeries#index'
  get '/bakeries/:id', to: 'bakeries#show'
  get '/bakeries/:id/pastries', to: 'bakeries#pastries'

  get '/pastries', to: 'pastries#index'
  get '/pastries/:id', to: 'pastries#show'
end
