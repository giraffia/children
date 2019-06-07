Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/children',     to: 'children#index'
  get '/children/:id', to: 'children#show'
end
