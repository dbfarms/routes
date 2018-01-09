class MapsController < ApplicationController 
    
    def index 
        @maps = Map.all 
    end 
    
    def show
        set_map 
    end 
    
    def create
        @map = Map.find(params["map"]["id"])
        redirect_to map_path(@map) #binding.pry
    end 
    
    #def routes_index 
    #    set_map
    #    @routes = @map.routes 
    #    render template: 'routes/index'
    #end 
    
    #def route 
    #    set_map
    #    set_route 
    #    render template: 'routes/show'
    #end 
    
    private
    
    def set_map 
        #binding.pry
        @map = Map.find(params["id"])
    end 
    
    def set_route
        @route = Route.find(params[:route_id])
    end 
    
end 