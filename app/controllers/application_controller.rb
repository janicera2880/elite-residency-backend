class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/listings" do
    listings = Listing.all.order(:list_price)
    listings.to_json(include: { subdivision: { include: :accounts } })
  end

  post '/listings' do
    subdivision = Subdivision.find_or_create_by(name: params[:subdivision])
    listings = Listing.create(
      image_url:params[:image_url],
      status:params[:status],
      list_price:params[:list_price],
      year_built:params[:year_built],
      storey:params[:storey],
      bedroom:params[:bedroom],
      bathroom:params[:bathroom],
      garage:params[:garage],
      building_size:params[:building_size],
      lot_size:params[:lot_size],
      architecture_style:params[:architecture_style],
      pool:params[:pool],
      subdivision_id:params[:subdivision_id],
      account_id:params[:account_id])
    listings.to_json(include: { subdivision: { include: :accounts } })
  end

  patch '/listings/:id' do
    listing = Listing.find(params[:id])
    listing.update(list_price :params[:list_price],
    status: params[:status]
    )
    listings.to_json(include: { subdivision: { include: :accounts } })
  end

  delete '/listings/:id' do
    listing = Listing.find(params[:id])
    listing.destroy
    listing.to_json
  end  
end