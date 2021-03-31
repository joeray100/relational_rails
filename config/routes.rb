Rails.application.routes.draw do
  get '/businesses', to: 'businesses#index'
  get '/businesses/new', to: 'businesses#new'
  get '/businesses/:id', to: 'businesses#show'
  get '/businesses/:id/edit', to: 'businesses#edit'
  patch '/businesses/:id', to: 'businesses#update'
  post '/businesses', to: 'businesses#create'

  get '/businesses/:id/employees', to: 'business_employees#index'
  get '/businesses/:id/employees/new', to: 'business_employees#new'
  post '/businesses/:id/employees', to: 'business_employees#create'

  get '/employees/:id', to: 'employees#show'
  get '/employees', to: 'employees#index'
  get '/employees/:id/edit', to: 'employees#edit'
  patch '/employees/:id', to: 'employees#update'

  get '/bakeries', to: 'bakeries#index'
  get '/bakeries/new', to: 'bakeries#new'
  get '/bakeries/:id', to: 'bakeries#show'
  get '/bakeries/:id/edit', to: 'bakeries#edit'
  patch '/bakeries/:id', to: 'bakeries#update'
  post '/bakeries', to: 'bakeries#create'

  get '/bakeries/:id/pastries', to: 'bakery_pastries#index'
  get '/bakeries/:id/pastries/new', to: 'bakery_pastries#new'
  post '/bakeries/:id/pastries', to: 'bakery_pastries#create'

  get '/pastries/:id', to: 'pastries#show'
  get '/pastries', to: 'pastries#index'
  get '/pastries/:id/edit', to: 'pastries#edit'
  patch '/pastries/:id', to: 'pastries#update'
end
