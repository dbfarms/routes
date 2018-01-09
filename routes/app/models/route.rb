class Route < ApplicationRecord
    has_many :landmarks 
    belongs_to :map 
    belongs_to :category
end
