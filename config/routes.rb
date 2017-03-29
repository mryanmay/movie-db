Rails.application.routes.draw do
  resources :movies

  get '/actors/:id' => 'actors#show', as: :actor
end
