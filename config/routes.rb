Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action" 
  	get "/welcome/index" => "welcome#index"
  	resources :worries

  	root 'welcome#index'
end
