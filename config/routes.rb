Rails.application.routes.draw do
  root to: 'welcome#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'login' => 'auth#index'
  post 'login' => 'auth#login'
  post 'logout' => 'user#logout'

  resources :register, only: %i[index create]
  resources :module, only: %i[index]

  namespace :student do
    resources :request, only: %i[index create show destroy]
    resources :welcome, only: %i[index]
  end

  namespace :teacher do
    resources :welcome, only: %i[index]

    resources :curator, only: %i[index show]
    post 'curator/apply_student' => 'curator#apply_student'
  end

  namespace :administrative do
    resources :welcome, only: %i[index]
    resources :competence, only: %i[index new create]
  end

  namespace :api do
    get 'group/speciality/:id' => 'group#by_speciality_id'
    post 'competence/subjects' => 'competence#subjects'
  end
end
