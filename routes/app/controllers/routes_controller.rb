class RoutesController < ApplicationController 
    
    def new 
        @route = Route.new 
        @map = Map.find(params["map_id"])
        #binding.pry
    end 
    
    def show
        set_route 
    end 
    
    def create 
        #binding.pry
        #"route"=>{"name"=>"best route in town", "id"=>"2", "landmark_ids"=>["", "1", "2", "3"]}
        @route = Route.create(route_params)
        binding.pry
    end 
    
    
    private 
    
    def set_route
        @route = Route.find(params[:id])
    end 
    
    def route_params
        params.require(:route).permit(:name, :landmark)
    end 
    
end 