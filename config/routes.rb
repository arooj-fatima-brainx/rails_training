Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "articles#index"

  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"

  #The route above declares that GET /articles requests are mapped to the index action of ArticlesController.
  #To create ArticlesController and its index action, we'll run the controller generator (with the --skip-routes option because we already have an appropriate route):
  #$ bin/rails generate controller Articles index --skip-routes

  resources :articles do
    resources :comments
  end
end
