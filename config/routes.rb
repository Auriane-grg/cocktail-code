Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'cocktails#index'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :instructions, only: [:new, :create] do 
      resources :ingredients, only: [:new, :create]
    end
  end

  resources :ingredients, only: [:new, :create]

  resources :instructions, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
