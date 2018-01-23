class RoutesController < ApplicationController 
    helper_method :params
    
    def new 
        @route = Route.new 
        @map = Map.find(params["map_id"])
    end 
    
    def index
    end 
    
    def show
        set_route 
    end 
    
    def create 
        #binding.pry
        @route = Route.create(route_params)
        @route.save
        #@route.push_landmarks(@route, params["route"]["landmark_ids"])
        
        map = Map.find(params["route"]["map_id"])
        redirect_to map_route_path(map.id, @route.id)
    end 
    
    def edit 
        @route = set_route
        @map = Map.find(params["map_id"])        
    end 
    
    def update 
        #binding.pry
        @route = Route.find(params["route"]["route_id"])
        @route.landmarks = [] 
        
        @route.update(route_params)
        @route.rating = params["rating"]
        #@route.push_landmarks(@route, params["route"]["landmark_ids"])
        @route.save
        map = Map.find(params["route"]["map_id"])
        redirect_to map_route_path(map.id, @route.id)
    end 
    
    def destroy
        set_route
        @route.destroy
        redirect_to map_routes_path, notice: 'Route was successfully destroyed.' 
    end
    
    
    private 
    
    def set_route
        #binding.pry
        @route = Route.find(params[:id]) #if params[:id]
    end 
    
    def route_params
        params.require(:route).permit(:name, :map_id, :rating, :landmark_ids => [])
    end 
    
end 