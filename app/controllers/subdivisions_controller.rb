class SubdivisionsController < ApplicationController
    # get all data for subdivisions by order and include all listings in each.
    get "/subdivisions" do
        subdivision = Subdivision.all.order(:name)
        subdivision.to_json(include: :listings)
    end

    # form to add new subdivision
    # to_json converts list of Active Record objects to a JSON-formatted string
    post "/subdivisions" do 
        subdivision = Subdivision.create(
            image_url: params[:image_url]
            name: params[:name]
            community_type: params[:community_type]
            overview: params[:overview]
        )
        subdivision.to_json
    end

end
