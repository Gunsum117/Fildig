Rails.application.routes.draw do

  root

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  namespace :admin do
  	resources :users,       only:[:index, :show, :edit, :update, :destroy]
  	resources :films,		only:[:new, :create, :index, :show, :edit, :update, :destroy]
  	resources :tags,		only:[:create, :index, :show, :update]
  	resources :reviews,		only:[:edit, :update]
  end


  resources :users,  		only:[:show, :edit, :update, :resign, :destroy]
  resources :relationships,	only:[:create, :destroy]
  resources :films,			only:[:new, :create, :index, :show, :edit, :update, :destroy]
  resources :tags,			only:[:create, :index, :show, :update]
  resources :reviews,		only:[:new, :create, :edit, :update]
  resources :good_reviews,	only:[:create, :destroy]
  resources :wishes,		only:[:create, :destroy]
  resources :dones,			only:[:create, :destroy]
  resources :mybests,		only:[:create, :destroy]
  resources :contacts,		only:[:new, :create, :destroy]


end
