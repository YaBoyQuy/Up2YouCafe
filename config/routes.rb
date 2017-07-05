Rails.application.routes.draw do

  root 'home#index'

  get '/contacts' => 'contacts#index', as: 'contacts'

  get '/contacts/new' => 'contacts#new', as: 'new_contacts'
  post '/contacts' => 'contacts#create', as: 'create_contacts'

  get '/contacts/:id/edit_contact' => 'contacts#edit', as: 'edit_contact'
  patch '/contacts/:id' => 'contacts#update', as: 'contact'

  delete '/contacts/:id/delete_contact' => 'contacts#delete', as:'delete_contact'

  get '/products' => 'products#index', as: 'products'

  get '/products/new' => 'products#new', as: 'new_products'
  post '/products' => 'products#create', as: 'create_products'

  get '/products/:id/edit' => 'products#edit', as: 'edit_product'
  patch '/products/:id' => 'products#update', as: 'product'

  delete '/products/:id/delete' => 'products#delete', as:'delete_product'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
