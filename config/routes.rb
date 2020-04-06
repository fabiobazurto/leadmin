Rails.application.routes.draw do
  resources :products do
    post :assign, on: :member
  end
  resources :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
