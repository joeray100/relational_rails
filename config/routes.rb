Rails.application.routes.draw do
  get '/businesses', to: 'businesses#index'
  get '/businesses/:id', to: 'businesses#show'
  get '/businesses/:id', to: 'employees#show'
  get '/businesses/:id/employees', to: 'business_employees#index'

  get '/employees/:id', to: 'employees#show'
  get '/employees', to: 'employees#index'

  get '/bakeries/new', to: 'bakeries#new'
  get '/bakeries', to: 'bakeries#index'
  get '/bakeries/:id', to: 'bakeries#show'
  get '/bakeries/:id/pastries', to: 'bakery_pastries#index'

  get '/pastries/:id', to: 'pastries#show'
  get '/pastries', to: 'pastries#index'
end
