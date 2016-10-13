Rails.application.routes.draw do
  resources :pforms
  #devise_scope :user do
  #  get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
  #  get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  #end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :otcs
  resources :ods
  resources :mjs
  resources :alcohols
  resources :cigarettes
  resources :refbs
  resources :refas
  resources :pregs
  resources :cparents
  resources :discharges
  resources :mhealths
  resources :rhealths
  resources :wks
  resources :grades
  resources :eds
  resources :insurances
  resources :races
  resources :employments
  resources :rsources
  resources :states
  resources :notes
  devise_for :users
  #devise_for :users, :skip => :registrations
  #devise_for :users, :skip => [:registrations] 
  #as :user do
  #get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
  #put 'users' => 'devise/registrations#update', :as => 'user_registration'
  #end
  #devise_for :users, :skip => [:registrations]
  #as :user do
  #  get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
  #  patch'users/:id' => 'devise/registrations#update', :as => 'user_registration'
  #end
  resources :notes
  resources :genders
  get 'home/index'
  get 'testp/test'

  
  #devise_for :users do
  #    get '/users/sign_out' => 'devise/sessions#destroy'
  #match 'users/sign_out' => "devise/sessions#destroy"
  #end
  
  resources :clients do
  resources :notes, except: [:show, :index]
end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
