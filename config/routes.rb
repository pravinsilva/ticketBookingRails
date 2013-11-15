TicketBooking1::Application.routes.draw do
    match 'auth/:provider/callback', to: 'sociallogin#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sociallogin#destroy', as:'signout'
  
  get "signout/sign_out"

  post "sign_in" => "signins#login"

  get "/signins/sign_in"
  
  get "/signins/invalidsignin"
  
  get "/homes/featured"
  
  get "/signins/admin_page"

  get "/signins/admin_page"
  
 get "/signins/excursions"
 
 get "/signins/restaurant"
 
 get "/shows/show_timing"
 get "/shows/bookseats"
 get "/tickets/new"
 get "/tickets/ticket"
 get "/tickets/guest_ticket"
 get "/homes/index"

 resources :events
 resources :tickets
  resources :screens
  resources :shows
  
  resources :sitecustomers
  root :to => 'homes#index'
  
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
