Rails.application.routes.draw do
  root to: 'home#main'
  resources :character do
  	member do
  		get 'download'
  	end
  end

end
