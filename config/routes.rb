Rails.application.routes.draw do

  get "/produtos", to: "produtos#index"
  resources :produtos, only: [:new, :create, :destroy, :edit, :update]

  resources :departamentos

end
