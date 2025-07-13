class HomeController < ApplicationController        
   
    def index
        @title = "Home Page or / Page"
        @message = "Welcome to the Home Page!"
    end

end