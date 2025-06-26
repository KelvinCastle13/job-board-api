Rails.application.routes.draw do
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "users/:id" => "users#destroy"

  get "/companies" => "companies#index"
  get "/companies/:id" => "companies#show"
  post "/companies" => "companies#create"
  patch "/companies/:id" => "companies#update"
  delete "companies/:id" => "companies#destroy"

  get "/jobs" => "jobs#index"
  get "/jobs/:id" => "jobs#show"
  post "/jobs" => "jobs#create"
  patch "/jobs/:id" => "jobs#update"
  delete "jobs/:id" => "jobs#destroy"
end
