Rails.application.routes.draw do

  resources :restaurants, only: [:index ,:show, :new, :create] do

    resources :revieews, only: [:new, :create]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
