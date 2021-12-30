Rails.application.routes.draw do
  resources :quotes

  get 'users', to: 'users#index'
  get "users/:username" => "users#showUser"
  get "users/:username/quotes" => "users#showUserQuotes"

  resources :users do
    resources :quotes
  end

  root to: "main#index"
end
