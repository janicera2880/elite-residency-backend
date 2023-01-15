class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/listings" do
    listings = Listing.all.order(:list_price).limit(12)
    listings.to_json
  end

  get "/listings/:id" do
    listing = Listing.find(params[:id])

end
end