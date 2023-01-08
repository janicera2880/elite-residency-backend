class Subdivision < ActiveRecord::Base
    has_many :listings
    has_many :accounts, through: :listings
end