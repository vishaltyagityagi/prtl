Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'dashboards#index'
  resources :dashboards do
    collection do
      get :about_us
      get :contact_us
      get :single_job
      get :post_job
      get :blog
      get :job_listing
    end
  end
  resources :contacts, only: [:create]
  # get 'about_us' => 'dashboards#about_us'
  # get 'contact_us' => 'dashboards#contact_us'
  #
  # get 'single_job' => 'dashboards#single_job'
  # get 'post_job' => 'dashboards#post_job'
  # get 'blog' => 'dashboards#blog'

  resources :pages do
    collection do
      get :services
      get :single_services
      get :blog_single
      get :protfolio
      get :protfolio_single
      get :testmonials
      get :ask_questions
      get :gallery
      get :page
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
