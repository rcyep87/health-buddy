Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  get "dashboard" => 'dashboard#dashboard', as: "user_dashboard"

  get 'steps' => 'steps#index'
  get 'steps/new' => 'steps#new' , as: "new_step"
  post 'steps' => 'steps#create'
  get 'steps/:id' => 'steps#show', as: "step"
  delete 'steps/:id' => 'steps#destroy'

  get  'sleeps'         => 'sleeps#index',  as: "sleeps"
  get  'sleeps/new'     => 'sleeps#new'  ,  as: "new_sleep"
  post 'sleeps'        => 'sleeps#create'
  get  'sleeps/:id'     => 'sleeps#show' ,  as: "sleep"
  delete 'sleeps/:id'  => 'sleeps#destroy'

  get    'locations'     => 'locations#index'  , as: "locations"
  get    'locations/new' => 'locations#new'    , as: "new_location"
  post   'locations'     => 'locations#create'
  get    'locations/:id' => 'locations#show'   , as: "location"
  delete 'locations/:id' => 'locations#destroy'

  get    'current_forecast'      => "weathers#index"   , as: "forecast"

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
