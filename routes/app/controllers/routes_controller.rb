class RoutesController < ApplicationController 
    
    def new 
        binding.pry
        @route = Route.new 
    end 
    
    def show
        set_route 
    end 
    
    
    private 
    
    def set_route
        @route = Route.find(params[:id])
    end 
    
end 