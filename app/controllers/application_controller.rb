class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  
    # form to add new subdivision
    # to_json converts list of Active Record objects to a JSON-formatted string
    post "/subdivisions" do 
      subdivision = Subdivision.create(
          image_url: params[:image_url],
          name: params[:name],
          overview: params[:overview]
      )
      subdivision.to_json
      end

    # Show all subdivision including their listings
    get "/subdivisions" do
    subdivision = Subdivision.all
    subdivision.to_json(include: :listings)
    end

    get "/listings" do
    listings = Listing.all
    listings.to_json
    
   
    end

    # Add new listing
    post "/listings" do 
    listing = Listing.create(
        image_url: params[:image_url],
        active: true,
        list_price: params[:list_price],
        year_built: params[:year_built],
        storey: params[:storey],
        bedroom: params[:bedroom],
        bathroom: params[:bathroom],
        garage: params[:garage],
        building_size: params[:building_size],
        lot_size: params[:lot_size],
        architecture_style: params[:architecture_style],
        subdivision_id: params[:subdivision_id]
    )
    listing.to_json
    end

    # Update availability and listing price to a listing
    patch "/listings/:id" do 
    listing = Listing.find(params[:id])
    listing.update(
        list_price: params[:list_price],
       
        
    )
    listing.to_json
    end

    # Delete listing when availabilty is inactive

    delete "listings/:id" do
    listing = Listing.find(params[:id])
    listing.destroy
    listing.to_json
    end 



    end