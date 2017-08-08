Rails.application.routes.draw do

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', 
                   registrations: "registrations" }
  
  root to: 'pages#home'
  get "/select_profile", to: "pages#select_profile", as: :select_profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :projects do
    member do
      get 'confirm', to: 'projects#confirm'
    end
  end

  resources :ngos, except: :show

  resources :volunteers, except: :show
end
