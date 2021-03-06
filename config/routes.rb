EolSpeciesViz::Application.routes.draw do
  devise_for :users

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
  root :to => "default#index"

  resources :observations do
    get 'index_jqgrid', 'export', :on=> :collection
    post 'create_from_form'
  end
  resources :taxa do
    get 'index_jqgrid', 'search', 'match_to_eol', 'taxon_name_autocomplete', 'match_taxon_to_eol', 'export', :on=>:collection
    get 'confirm_eol_taxon'
  end
  resources :interactions do
    get 'index_jqgrid', 'export', 'htmlselect_jqgrid',:on=>:collection
  end
  resources :ecosystems do
    get 'index_jqgrid', 'export', :on=>:collection
  end  
  resources :interaction_categories,:biomes,:roles do
    get 'htmlselect_jqgrid', 'export', :on=>:collection
  end
  resources :users do
    get 'index_jqgrid', 'export', :on=>:collection
  end
    
  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id(.:format)))'

end
