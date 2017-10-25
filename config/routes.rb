Rails.application.routes.draw do

	mount ActionCable.server => '/cable'
	root 'input_sessions#show'
	resources :input_sessions
end
