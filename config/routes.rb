Rails.application.routes.draw do
  get '/businesses', to: 'businesses#index'
  get '/businesses/new', to: 'businesses#new'
  get '/businesses/:id', to: 'businesses#show'
  get '/businesses/:id/edit', to: 'businesses#edit'
  get '/businesses/:id/employees', to: 'business_employees#index'
  post '/businesses', to: 'businesses#create'

  get '/employees/:id', to: 'employees#show'
  get '/employees', to: 'employees#index'

  get '/bakeries/new', to: 'bakeries#new'
  get '/bakeries', to: 'bakeries#index'
  get '/bakeries/:id', to: 'bakeries#show'
  get '/bakeries/:id/edit', to: 'bakeries#edit'
  get '/bakeries/:id/pastries', to: 'bakery_pastries#index'
  post '/bakeries', to: 'bakeries#create'


  get '/pastries/:id', to: 'pastries#show'
  get '/pastries', to: 'pastries#index'
end
