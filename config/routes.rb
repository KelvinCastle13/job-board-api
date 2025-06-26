Rails.application.routes.draw do
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "users/:id" => "users#destroy"

  get "/conpanies" => "conpanies#index"
  get "/conpanies/:id" => "conpanies#show"
  post "/conpanies" => "conpanies#create"
  patch "/conpanies/:id" => "conpanies#update"
  delete "conpanies/:id" => "conpanies#destroy"

  get "/jobs" => "jobs#index"
  get "/jobs/:id" => "jobs#show"
  post "/jobs" => "jobs#create"
  patch "/jobs/:id" => "jobs#update"
  delete "jobs/:id" => "jobs#destroy"
end
