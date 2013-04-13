Ecommerce::Application.routes.draw do

get "pages/home"
get "pages/contact"
get "pages/about" 
match 'home', :controller => 'pages', :action => 'home'
match 'contact', :controller => 'pages', :action => 'contact'
match 'contact', :controller => 'pages', :action => 'contact'
match 'help', :controller => 'pages', :action => 'help'
resources :pages 

resources :commandes 

resources :paniers

match 'categoris/:action', :controller => 'categoris', :action => /[a-z]+/i
match '/categoris/listProduit', :controller => 'categoris', :action => 'listProduit'
match '/categoris/listCategori', :controller => 'categoris', :action => 'listCategori'
resources :categoris

match 'produits/:action', :controller => 'produits', :action => /[a-z]+/i
match '/produits/afficher', :controller => 'produits', :action => 'afficher'
resources :produits

match 'user_sessions/:action', :controller => 'user_sessions', :action => /[a-z]+/i
match 'login', :controller => 'user_sessions', :action => 'new'
match 'logout' => 'user_sessions#destroy', :as => :logout
resources :users, :user_sessions



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
