class ContactsController < ApplicationController
    def new      #corresponds to the new.html.erb view
        @contact = Contact.new
    end
    
    def create
    end
end


