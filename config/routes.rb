Rails.application.routes.draw do

  root "films#index"

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
  	resources :reviews,		only:[:edit, :update, :destroy]
  end


  resources :users, 		only:[:show, :edit, :update, :resign, :destroy] do
  	resources :relationships,	only:[:create, :destroy]
	get :follows, on: :member
    get :followers, on: :member
    # on: :memberはresources以外のアクションへのルーティングも定義してくれる
  end

  resources :films,			only:[:new, :create, :index, :show, :edit, :update, :destroy] do
  	resources :wishes,			only:[:create, :destroy]
  	resources :dones,			only:[:create, :destroy]
  	resources :mybests,			only:[:create, :destroy]
  	resources :reviews,			only:[:new, :create, :edit, :update, :destroy] do
  		resources :good_reviews,	only:[:create, :destroy]
  	end
  end

  resources :tags,			only:[:create, :index, :show, :update]
  resources :contacts,		only:[:new, :create, :destroy]

end
