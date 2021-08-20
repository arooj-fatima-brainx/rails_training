Rails.application.routes.draw do

  get 'home/index'
  root to: "home#index"
  devise_for :users
  resources :news

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html #
  #
  # root "news#index"
  # root "articles#index"
  # get "/articles", to: "articles#index"
  # get "/articles/new", to: "articles#new"
  # post "/articles", to : "articles#create"
  # get "/articles/:id", to: "articles#show"
  # get "/articles"/:id/edit, to: "articles#edit"
  # put or patch "/articles/:id", to: "articles#update"
  # delete "/articles/:id", to: "articles#destroy"

  # resources :articles

  # get "/users", to: "users#index"
  # get new
  # post "/users", to: "users#create"
  # get show
  # get edit
  # patch update
  # delete destroy


  # get "comments", to: "comments#index"
  #
  # get "/people", to: "people#index"
  #
  # get 'arts/index'
  # #The route above declares that GET /articles requests are mapped to the index action of ArticlesController.
  # #To create ArticlesController and its index action, we'll run the controller generator (with the --skip-routes option because we already have an appropriate route):
  # #$ bin/rails generate controller Articles index --skip-routes
  #

  resources :articles do
    resources :comments
  end


  resources :products
  resources :users
  resources :people
  resources :books
end
