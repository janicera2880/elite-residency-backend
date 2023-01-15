class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/listings" do
    listing = Listing.all.order(:list_price)
    listing.to_json
  end
  #get '/accounts/:id' do
  #end
end