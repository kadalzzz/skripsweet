TryRailsAdmin::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  #devise_for :users, :path => "usuarios", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }
  
  get "log_in" => "user_sessions#new", :as => "log_in" 
  get "log_out" => "user_sessions#destroy", :as => "log_out"

  resources :user_sessions
  resources :categories
  resources :users
  resources :products
  resources :tickets
  resources :comments_tickets
  resources :assets_tickets
  resources :project_types
  resources :technology_types
  match 'delete_asset/:id', :to => 'tickets#destroy_asset', :as => "delete_file" 
  match 'products/:json', :to => 'products#search', :as => "search" 
  root :to => 'home#index'
  match 'update_status_tickets/:id/:status', :to => 'tickets#update_status', :as => "update_status" 
  
  resource :rank
  match 'ranking', :to =>'rank#index', :as => "ranking"

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id(.:format)))'
end
