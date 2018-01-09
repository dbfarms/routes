class Landmark < ApplicationRecord
    #belongs_to :category
    has_many :landmark_routes
    has_many :routes, through: :landmark_routes
end
