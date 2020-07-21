Rails.application.routes.draw do
  devise_for :users
  root 'dashboard#index'
  get 'about_us' => 'dashboard#about_us'
  get 'contact_us' => 'dashboard#contact_us'

  get 'single_job' => 'dashboard#single_job'
  get 'post_job' => 'dashboard#post_job'
  get 'blog' => 'dashboard#blog'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
