Rails.application.routes.draw do
  resources :products do
    collection do
    	post "bulk_uploads"
    end
  end
  root :to=> "products#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
