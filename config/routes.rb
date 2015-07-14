Rails.application.routes.draw do

	resources :puppies
		#    puppies GET    /puppies(.:format)          puppies#index
		#            POST   /puppies(.:format)          puppies#create
		#  new_puppy GET    /puppies/new(.:format)      puppies#new
		# edit_puppy GET    /puppies/:id/edit(.:format) puppies#edit

		#      puppy GET    /puppies/:id(.:format)      puppies#show
		#            PATCH  /puppies/:id(.:format)      puppies#update
		#            PUT    /puppies/:id(.:format)      puppies#update
		#            DELETE /puppies/:id(.:format)      puppies#destroy
	root 'puppies#index'
end
