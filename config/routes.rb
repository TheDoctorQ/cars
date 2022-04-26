Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/electrics" => "electrics#index"
  get "electrics/new" => "electrics#new"
  get "/electrics/:id" => "electrics#show"
  post "/electrics" => "electrics#create"

end
