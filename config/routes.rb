Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :notes

  # If user signed in, show the notes index view, otherwise show the welcome index view
  authenticated :user do
    root 'notes#index', as: "authenticated_root"
  end

  root 'welcome#index'
end
