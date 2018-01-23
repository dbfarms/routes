class Map < ApplicationRecord
    has_many :routes 
    validates :name, presence: true 
    validates :name, uniqueness: true 
end
