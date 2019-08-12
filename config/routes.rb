Rails.application.routes.draw do
  # get '/songs', to: "songs#index"
  # get '/songs/:id', to: "songs#show"
  # get '/songs/new', to: "songs#new"
  # post '/songs', to: "songs#create"
  # get '/songs/:id/edit', to: "songs#edit"
  # patch '/songs/:id', to: "songs#update"
  # delete '/songs/:id', to: "songs#destroy"

  resources :songs do
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
