Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :main, only: [:index,:show]
  root to: "main#index"
  namespace :api do 
    namespace :v1 do
      resources :greeting, only: [:index]
    end
  end
end
