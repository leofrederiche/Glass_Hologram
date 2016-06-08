class WelcomeController < ApplicationController
   
   def index
   end
   
   def projects
   end
   
   def about
   end

   def gallery
   		@images = Image.all
   end
    
end