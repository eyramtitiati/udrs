Rails.application.routes.draw do
  # New Converts routes for all users
  resources :new_converts, only: [:index, :new, :create, :show]

  # Admin-specific routes
  namespace :admin do
    resources :basentas, only: [:index, :new, :create, :show]
    resources :users, only: [:index, :new, :create, :show]
    resources :new_converts, only: [:index] # Admin-specific index view for converts
  end

  # Devise routes for user authentication
  devise_for :users

  # Set the root route to the login page for unauthenticated users
  devise_scope :user do
    unauthenticated :user do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  # Authenticated routes for admin and user dashboards
  authenticated :user, ->(u) { u.admin? } do
    root to: "admin_dashboard#index", as: :admin_root
    get 'admin_dashboard', to: 'admin_dashboard#index'
  end

  authenticated :user, ->(u) { u.user? } do
    root to: "user_dashboard#index", as: :user_root
  end

  root to: 'new_converts#new'
end
