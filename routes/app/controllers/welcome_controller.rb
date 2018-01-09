class WelcomeController < ApplicationController
    
    def home 
        @user = current_user 
        @maps = Map.all
    end 
    
end 