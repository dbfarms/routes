class MapsController < ApplicationController 
    
    def index 
        binding.pry
    end 
    
    def show
        #binding.pry
        set_map 
    end 
    
    def create
        @map = Map.find(params["map"]["id"])
        redirect_to map_path(@map) #binding.pry
    end 
    
    private
    
    def set_map 
        @map = Map.find(params["id"])
    end 
    
end 