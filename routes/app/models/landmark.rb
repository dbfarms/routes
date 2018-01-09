class Landmark < ApplicationRecord
    #belongs_to :category 
    has_many :routes
end
