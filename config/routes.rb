Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [] do 
    resources :pets, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  end

  devise_scope :user do
     authenticated :user do
       root 'pets#index', as: :authenticated_root
     end
     unauthenticated do
       root 'devise/sessions#new', as: :unauthenticated_root
     end
   end

  get '/api/pets/:id' => 'pets#pet'
  get '/api/owner/:id' => 'pets#owner'
  get '/api/image/:id' => 'pets#image'

end
