Rails.application.routes.draw do
  post '/' => 'pages#index'

  get '/page/:id' => 'pages#show'
end
