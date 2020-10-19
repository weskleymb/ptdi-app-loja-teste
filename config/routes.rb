Rails.application.routes.draw do

  delete "/produtos/:id/remover", to: "produtos#destroy", as: :produto
  post "/produtos", to: "produtos#create"
  get "/produtos", to: "produtos#index"
  get "/produtos/new", to: "produtos#new"

end
