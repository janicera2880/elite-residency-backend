class Listing < ActiveRecord::Base
    belongs_to :account
    belongs_to :subdivision
    
end