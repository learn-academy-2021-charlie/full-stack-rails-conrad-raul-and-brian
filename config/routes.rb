Rails.application.routes.draw do
  get '/blogs' => 'blog#index'
  root 'blog#index'
end
