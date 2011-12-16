Sjj::Application.routes.draw do

  get "blog/index"
  get "blog/show"

  match "blog/:id" => "blog#show"
  match "journal/:id" => "blog#show"

  root to: 'blog#index'

end
