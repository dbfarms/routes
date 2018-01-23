class LandmarksController < ApplicationController
    
    def index
        @landmarks = Landmark.all 
    end 
    
    def new
        @landmark = Landmark.new
    end
    
    def show 
        set_landmark
        @routes = Route.all
    end

    def edit 
        set_landmark
        
    end 
    
    def update 
        set_landmark
        @landmark.update(landmark_params)
        redirect_to landmark_path(@landmark)
    end 
    
    def create
        @landmark = Landmark.create(landmark_params)
        redirect_to landmark_path(@landmark)
    end
    
    def destroy
        set_landmark
        @landmark.destroy
        redirect_to landmarks_path, notice: 'Route was successfully destroyed.'
    end 
    
    
    private 
    
    def set_landmark
        @landmark = Landmark.find(params[:id])
    end 
    
    def landmark_params
        params.require(:landmark).permit(:name, :history, :route_ids => [])
    end 
    
end 