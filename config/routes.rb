Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/children',     to: 'children#index'
  get '/children/new', to: 'children#new'
  get '/children/:id', to: 'children#show'
  post '/children',    to: 'children#create'
end
