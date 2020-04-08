Rails.application.routes.draw do

    resources :categories
    resources :products do
      post :assign, on: :member
    end

    resources :stores

    get 'tags/:tag', to: 'categories#index', as: :tag

    root to: 'stores#index'

end
