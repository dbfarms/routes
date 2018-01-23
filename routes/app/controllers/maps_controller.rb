class MapsController < ApplicationController 
    helper_method :params
    
    def index 
        @categories = Category.all 
        #binding.pry
        @maps = Map.all 
    end 
    
    def show
        set_map 
        @rating
       # binding.pry
    end 
    
    def new 
        @map = Map.new 
    end 
    
    def create
        binding.pry
        @map = Map.create(map_params)
        binding.pry
        #@map = Map.find(params["map"]["id"])
        redirect_to map_path(@map) #binding.pry
    end 
    
    def edit 
        set_map 
    end 
    
    def update
        set_map 
        @map.update()
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
        if params["id"] == ":id"
           @map = Map.find(params["map"])
        else
            @map = Map.find(params["id"])
        end 
        @rating = params["rating"] if params["rating"]
    end 
    
    def map_params 
        params.require(:map).permit(:name)
    end 
    
    def set_route
        @route = Route.find(params[:route_id])
    end 
    
end 