class CustomerMailer < ApplicationMailer
    def welcome_email
        @customer = params[:customer]
        mail(to:@customer.email, subject:"Welcome, we are happy to have you!")
    end
end
