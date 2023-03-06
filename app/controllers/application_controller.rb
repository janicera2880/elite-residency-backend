class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  
    # define a route for a POST request, call create method on Subd Model
    # params hash contains key-value pairs corresponding to the input fields of a form
    # to_json converts list of Active Record objects to a JSON-formatted string
    post "/subdivisions" do 
      subdivision = Subdivision.create(
          image_url: params[:image_url],
          name: params[:name],
          overview: params[:overview]
      )
      subdivision.to_json
      end

    # define a route for a GET request to the /subdivision URL endpoint. Call all method on Subd model and retrieve all records then assign to subdivision variable.
    # include all listings object
    get "/subdivisions" do
    subdivision = Subdivision.all.order(:title)
    subdivision.to_json(include: :listings)
    end

    # define GET request so that when user navigates to /listings endpoint, server will respond and retrieve all Listing table and sort in ascending based on list_price.
    get "/listings" do
    listings = Listing.all.order(:list_price)
    listings.to_json
    
   
    end

    # define a route for a POST request, call create method on Listing Model
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

    # define endpoint for PATCH request where :id is a parameter that represent the ID of the listing to be updated
    patch "/listings/:id" do 
    listing = Listing.find(params[:id])
    listing.update(
        list_price: params[:list_price],
          
    )
    listing.to_json
    end

    # defines a DELETE endpoint for a web API that deletes a specific listing identified by its ID using params hash with find method.
    
    delete "/listings/:id" do
    listing = Listing.find(params[:id])
    listing.destroy
    listing.to_json
    end 



    end