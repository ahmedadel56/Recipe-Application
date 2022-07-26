Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users , only: [:index, :show] do
    resources :foods,:recipes  , only: [:index, :show, :new, :create, :destroy] do
      resources :recipe_foods , only: [:index, :show, :new, :create, :destroy]
    end
  end 
  get '/recipes', to: 'recipes#index'
  get '/public_recipes', to: 'public_recipes#index'
end
