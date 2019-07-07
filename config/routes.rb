Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  get 'contacts/show'
  get 'mybests/create'
  get 'mybests/destroy'
  get 'dones/create'
  get 'dones/destroy'
  get 'wishes/create'
  get 'wishes/destroy'
  get 'good_reviews/create'
  get 'good_reviews/destroy'
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/edit'
  get 'reviews/update'
  get 'tags/create'
  get 'tags/index'
  get 'tags/show'
  get 'tags/update'
  get 'relationships/create'
  get 'relationships/destroy'
  get 'films/new'
  get 'films/create'
  get 'films/index'
  get 'films/show'
  get 'films/edit'
  get 'films/update'
  get 'films/destroy'
  get 'relationship/create'
  get 'relationship/destroy'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/resign'
  get 'users/destroy'
  devise_for :admins
  devise_for :users


  

end
