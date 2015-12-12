class PagesController < ApplicationController
    def home     #corresponds to the home.html.erb view
        @basic_plan = Plan.find(1)   #1 refers to the ID
        @pro_plan = Plan.find(2)
    end
    
    def about
    end

end
