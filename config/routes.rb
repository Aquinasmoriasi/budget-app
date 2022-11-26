Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :post]
  resources :groups
  resources :group_expenses, only: [:new, :create]
  resources :expenses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  authenticated :user do
    root to: 'groups#index'
  end

  devise_scope :user do
    root to: 'devise/sessions#splash', as: :splash_root
  end

  # Defines the root path route ("/")

  get '/older_groups' => "groups#older_index"
end
