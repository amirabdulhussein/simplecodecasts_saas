class ContactMailer < ActionMailer::Base
    #creating a class in ruby and inheriting it from the action mailer
    
    default to: 'amir.abdulhussein@gmail.com'
    
    def contact_email(name,email,body)  #creating a method (function)
            #must name function exactly like file name
        @name = name       #passing in arguments in a function and making instant variable  out of them
        @email = email
        @body = body
        
        mail(from: email, subject: 'Contact Form Message')
        
    end
end
