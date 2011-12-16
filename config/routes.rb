Sjj::Application.routes.draw do

  get "blog/index"
  get "blog/show"

  root to: 'blog#index'

end
