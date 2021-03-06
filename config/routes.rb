Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/muscles" => "muscles#index"
    get "/muscles/:id" => "muscles#show"
    post "/muscles" => "muscles#create"
    patch "/muscles/:id" => "muscles#edit"
    delete "/muscles/:id" => "muscles#destroy"
    
    get "/exercises" => "exercises#index"
    get "/exercises/:id" => "exercises#show"
    post "/exercises" => "exercises#create"
    patch "/exercises/:id" => "exercises#edit"
    delete "/exercises/:id" => "exercises#destroy"
    
    get "/orders" => "orders#index"
    get "/orders/:id" => "orders#show"
    post "/orders" => "orders#create"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    

    get "/carted_exercises" => "carted_exercises#index"
    post "/carted_exercises" => "carted_exercises#create"
  end
  get '*path' => "application#index"
  
end
