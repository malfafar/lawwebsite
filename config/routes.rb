Rails.application.routes.draw do

  resources :slides
  get 'styleguide' => 'styleguide#index' if Rails.env.development?
  resources :social_bodies
  resources :social_bodies
  resources :chapters
  resources :fees
  resources :private_informations
  resources :laws
  # mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  get 'styleguide' => 'styleguide#index' if Rails.env.development?

  get 'admin_members/show/:id', to: 'admin_members#show', as: 'admin_member_show'
  get 'admin_members/edit/:id', to: 'admin_members#edit', as: 'admin_member_edit'
  get 'admin_members/new', to: 'admin_members#new', as: 'admin_member_new'
  patch 'admin_members/update/:id', to: 'admin_members#update', as: 'admin_update_member'
  post 'admin_members/create', to: 'admin_members#create', as: 'admin_create_member'
  delete 'admin_members/destroy/:id', to: 'admin_members#destroy', as: 'admin_destroy_member'
  get 'admin_members/index_pending', to: 'admin_members#index_pending', as: 'index_pending'
  get 'admin_members/index_active', to: 'admin_members#index_active', as: 'index_active'

  resources :protocols, only: [:show, :edit]
  resources :categories
  resources :benefits
  resources :abouts
  resources :jobs
  resources :partners
  resources :posts
  as :member do
    patch '/members/confirmation' => 'members/confirmations#update', :via => :patch, :as => :update_member_confirmation
  end

  devise_for :members, controllers: { confirmations: "members/confirmations"}

  get 'general_pages/about', to: 'general_pages#about', as: 'gp_about'
  get 'general_pages/news', to: 'general_pages#news', as: 'gp_news'
  get 'general_pages/benefits', to: 'general_pages#benefits', as: 'gp_benefits'
  get 'general_pages/contact', to: 'general_pages#contact', as: 'gp_contact'
  post 'general_pages/send_contact', to: 'general_pages#send_contact', as: 'gp_send_contact'

  get 'general_pages/partners', to: 'general_pages#partners', as: 'gp_partners'
  get 'general_pages/jobs', to: 'general_pages#jobs', as: 'gp_jobs'

  get 'general_pages/post/:id', to: 'general_pages#post', as: 'gp_post'
  get 'general_pages/job/:id', to: 'general_pages#job', as: 'gp_job'
  get 'general_pages/benefit/:id', to: 'general_pages#benefit', as: 'gp_benefit'
  get 'general_pages/protocol/:id', to: 'general_pages#protocol', as: 'gp_protocol'
  get 'general_pages/statutes', to: 'general_pages#statutes', as: 'gp_statutes'
  get 'general_pages/laws', to: 'general_pages#laws', as: 'gp_laws'
  get 'general_pages/social_bodies', to: 'general_pages#social_bodies', as: 'gp_social_bodies'
  get 'general_pages/private_informations', to: 'general_pages#private_informations', as: 'gp_private_informations'
  get 'general_pages/profile', to: 'general_pages#profile', as: 'gp_profile'
  root 'general_pages#index'

  get 'admin', to: 'admin_members#index_active', as: 'admin_root'

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
