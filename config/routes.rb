Rails.application.routes.draw do
  root 'breweries#index'

  resources :breweries do
    resources :breweries
  end
end