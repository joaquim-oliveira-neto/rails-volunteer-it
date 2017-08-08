Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :projects do
    member do
      get 'confirm', to: 'projects#confirm'
    end
  end

  resources :ngos, except: :show

  resources :volunteers, except: :show
end
