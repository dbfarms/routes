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
        @route = Route.create(route_params)
        #binding.pry
        @route.category = Category.find(params["route"]["id"])
        @route.save
        map = Map.find(params["route"]["map_id"])
        redirect_to map_route_path(map.id, @route.id)
    end 
    
    def edit 
        set_route
        @map = Map.find(params["map_id"])        
    end 
    
    def update 
        @route = Route.update(route_params)
        @route.category = Category.find(params["route"]["id"])
        @route.save
        map = Map.find(params["route"]["map_id"])
        redirect_to map_route_path(map.id, @route.id)
    end 
    
    
    private 
    
    def set_route
        @route = Route.find(params[:id])
    end 
    
    def route_params
        params.require(:route).permit(:name, :landmark, :map_id)
    end 
    
end 