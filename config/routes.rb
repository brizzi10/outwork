Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories do
    resources :drills
  end
  resources :users
  resource  :session

  root "categories#index"

end
