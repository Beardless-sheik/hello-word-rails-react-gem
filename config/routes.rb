Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :main, only: [:index,:show]
  namespace :api do 
    namespace :v1 do
      resources :greetings, only: [:index]
    end
  end
end
