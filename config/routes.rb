Rails.application.routes.draw do
  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

  # Routes for the Image resource:
  # CREATE
  get "/images/new", :controller => "images", :action => "new"
  post "/create_image", :controller => "images", :action => "create"

  # READ
  get "/images", :controller => "images", :action => "index"
  get "/images/:id", :controller => "images", :action => "show"

  # UPDATE
  get "/images/:id/edit", :controller => "images", :action => "edit"
  post "/update_image/:id", :controller => "images", :action => "update"

  # DELETE
  get "/delete_image/:id", :controller => "images", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
