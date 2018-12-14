Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/seas/', to: 'seas#index', as: 'seas'

  # resources :seas, only: [:index, :show, :update, :destroy, :create, :new, :edit] #this line works, it is the same as below!
  get '/', to: 'seas#welcome'

  get '/seas', to: 'seas#index', as: 'seas'
  get '/seas/new', to: 'seas#new', as: 'new_sea'
  get '/seas/:id/edit', to: 'seas#edit', as: 'edit_sea'

  get '/seas/:id', to: 'seas#show', as: 'sea' #the ones below use this "as"
  post '/seas', to: 'seas#create'
  patch '/seas/:id', to: 'seas#update'
  delete '/seas/:id/delete', to: 'seas#destroy'

end

# get "/" do
#   erb :welcome
# end
#
# get "/seas" do
#   @seas = Sea.all
#   erb :'index.html'
# end
#
# get "/seas/new" do
#   erb :'new.html'
# end
#
# get "/seas/:id" do
#   @sea = Sea.find(params[:id])
#   erb :'show.html'
# end
#
# post "/seas" do
#   @sea = Sea.new(params)
#   @sea.save
#   redirect to "/seas/#{@sea.id}"
# end
#
# get "/seas/:id/edit" do
#   @sea = Sea.find(params[:id])
#
#   erb :'edit.html'
# end
#
# patch "/seas/:id" do
#   @sea = Sea.find(params[:id])
#   params.delete("_method")
#   params[:has_mermaids] ||= false
#   @sea.update(params)
#   redirect to "/seas/#{@sea.id}"
# end
#
# delete "/seas/:id" do
#   @sea = Sea.find(params[:id])
#   @sea.destroy
#   redirect to "/seas"
# end
