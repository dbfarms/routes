class Route < ApplicationRecord
    has_many :landmarks 
    belongs_to :map 
end
