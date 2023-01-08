class Account < ActiveRecord::Base
    has_many :listings
    has_many :subdivisions, through: :listings

end
