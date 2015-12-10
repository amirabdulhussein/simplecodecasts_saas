class ContactsController < ApplicationController
    def new      #corresponds to the new.html.erb view
        @contact = Contact.new # @contact is an instant variable
    end
    
    def create
        @contact = Contact.new(contact_params)
        
        if @contact.save     #runs contact.save and checks if save comes back as ok or not. This saves to the DB
            name = params[:contact][:name]  #hash notation 
            email = params[:contact][:email]
            body = params[:contact][:body]
            
            ContactMailer.contact_email(name,email,body).deliver
            
            flash[:success] = 'Message sent'
            redirect_to new_contact_path
        else
            flash[:danger] = 'Error occured, message has not been sent'
            redirect_to new_contact_path
        end
    end
    
    private
        def contact_params
            params.require(:contact).permit(:name, :email, :comments)
        end
    
    
end


