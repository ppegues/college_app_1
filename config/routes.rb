Rails.application.routes.draw do

  get('/', { :controller => 'home', :action => 'home' })


  get('/ranks', { :controller => 'list', :action => 'rank' })
  get('/scores', { :controller => 'list', :action => 'score' })
  get('/aid', { :controller => 'list', :action => 'aid' })


  # List of Regions
  get('/regions', { :controller => 'list', :action => 'region' })
  get('/regions/northeast', { :controller => 'list', :action => 'northeast' })
  get('/regions/south', { :controller => 'list', :action => 'south' })
  get('/regions/midwest', { :controller => 'list', :action => 'midwest' })
  get('/regions/west', { :controller => 'list', :action => 'west' })


  # Routes for the School resource:
  # CREATE
  get('/schools/new', { :controller => 'schools', :action => 'new' })
  get('/create_school', { :controller => 'schools', :action => 'create' })

  # READ
  get('/schools', { :controller => 'schools', :action => 'index' })
  get('/schools/:id', { :controller => 'schools', :action => 'show' })

  # UPDATE
  get('/schools/:id/edit', { :controller => 'schools', :action => 'edit' })
  get('/update_school/:id', { :controller => 'schools', :action => 'update' })

  # DELETE
  get('/delete_school/:id', { :controller => 'schools', :action => 'destroy' })
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get('/favorites/new', { :controller => 'favorites', :action => 'new' })
  get('/create_favorite', { :controller => 'favorites', :action => 'create' })

  # READ
  get('/favorites', { :controller => 'favorites', :action => 'index' })
  get('/favorites/:id', { :controller => 'favorites', :action => 'show' })

  # UPDATE
  get('/favorites/:id/edit', { :controller => 'favorites', :action => 'edit' })
  get('/update_favorite/:id', { :controller => 'favorites', :action => 'update' })

  # DELETE
  get('/delete_favorite/:id', { :controller => 'favorites', :action => 'destroy' })
  #------------------------------

  # Routes for the Profile resource:
  # CREATE
  get('/profiles/new', { :controller => 'profiles', :action => 'new' })
  get('/create_profile', { :controller => 'profiles', :action => 'create' })

  # READ
  get('/profiles', { :controller => 'profiles', :action => 'index' })
  get('/profiles/:id', { :controller => 'profiles', :action => 'show' })
  get('/profiles/preference/:id', { :controller => 'preference', :action => 'filter' })

  # UPDATE
  get('/profiles/:id/edit', { :controller => 'profiles', :action => 'edit' })
  get('/update_profile/:id', { :controller => 'profiles', :action => 'update' })

  # DELETE
  get('/delete_profile/:id', { :controller => 'profiles', :action => 'destroy' })
  #------------------------------

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
