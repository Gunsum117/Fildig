Rails.application.routes.draw do

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
  	get "search_films" => "films#search",as: 'search_films'
  end


  resources :users, 		only:[:show, :edit, :update, :resign, :destroy, :follows, :followers] do
  	resources :relationships,	only:[:create, :destroy]
	get :follows, on: :member
    get :followers, on: :member
    # on: :memberはresources以外のアクションへのルーティングも定義
  end

  resources :films,			only:[:index, :show, :edit, :update, :destroy] do
  	resources :wishes,			only:[:create, :destroy]
  	resources :dones,			only:[:create, :destroy]
  	resources :mybests,			only:[:create, :destroy]
  	resources :reviews,			only:[:new, :create, :show, :edit, :update, :destroy] do
  		resources :good_reviews,	only:[:create, :destroy]
  	end
  end
  get "search_films" => "films#search",as: 'search_films'

  resources :tags,			only:[:create, :index, :show, :update]
  resources :contacts,		only:[:new, :create, :destroy]


  root "films#index"
end
