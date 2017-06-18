Rails.application.routes.draw do
  get '/notes/new' => 'notes#new'
  post '/notes' => 'notes#create'

  get '/notes' => 'notes#index'
end
