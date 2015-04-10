Rails.application.routes.draw do
  
resources :statistics do
	collection { post :import }
  get 'victimisation', :on => :collection
  get 'initiatedcase', :on => :collection
  get 'initiatedcourt', :on => :collection
  get 'cjsw', :on => :collection
  get 'clearedpolice', :on => :collection
  get 'recordedpolice', :on => :collection
  get 'domestic', :on => :collection
  get 'seizures1996', :on => :collection
  get 'seizures2010', :on => :collection
  get 'firearmscertificates', :on => :collection
  get 'firearmsoffences', :on => :collection
  get 'homicide', :on => :collection
  get 'liquor', :on => :collection
  get 'perception', :on => :collection
  get 'policedata', :on => :collection
  get 'prisonpop', :on => :collection
  get 'racistincidents', :on => :collection
  get 'reconvictions', :on => :collection
  get 'sentencetype', :on => :collection
  get 'sentencing', :on => :collection
  get 'summary', :on => :collection
  get 'types', :on => :collection
  get 'volume', :on => :collection
end
root to: 'statistics#index'

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
