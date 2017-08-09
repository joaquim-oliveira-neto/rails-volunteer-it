Rails.application.routes.draw do

  get 'matches/new'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks',
                   registrations: "registrations" }

  root to: 'pages#home'
  get "/select_profile", to: "pages#select_profile", as: :select_profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects do
    member do
      get 'match_volunteer_project', to: 'projects#match_volunteer_project'
      get 'confirm', to: 'projects#confirm'
    end
  end

  resources :ngos

  resources :volunteers, except: :show
end
