Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index', as: 'home'
=begin
	get 'home' => 'posts#index'
=end

  get 'test' => 'posts#test'
  get 'home' => 'posts#index'
  get 'formb' => 'posts#test'
  get 'about' => 'pages#about'
  get 'extra' => 'extra'
  get 'forma' => 'posts#forma'
  resources :posts do
  	resources :comments
  end
end
