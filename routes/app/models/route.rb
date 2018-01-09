class Route < ApplicationRecord
    has_many :landmark_routes
    has_many :landmarks, through: :landmark_routes
    belongs_to :map 
    has_one :category
end
