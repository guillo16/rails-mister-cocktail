Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"

  resources :cocktails, only: [:new, :show, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end

#to create the views  with the controller we do rails g controller cocktails index show new
