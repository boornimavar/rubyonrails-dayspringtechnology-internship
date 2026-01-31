class ProductMailer < ApplicationMailer
    def delivery_email
        @product = params[:product]
        mail(to:@product.product_email, subject:"Welcome, we are happy to have you!")
    end
end

