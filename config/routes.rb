Sjj::Application.routes.draw do

  get "blog/index"
  get "blog/show"
  get "blog/archive"

  match "blog" => 'blog#index'
  match "journal" => 'blog#index'
  match "blog/:id" => "blog#show"
  match "journal/:id" => "blog#show"

  root to: 'blog#index'

end
