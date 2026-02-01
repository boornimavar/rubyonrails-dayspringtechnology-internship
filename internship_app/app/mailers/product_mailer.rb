class ProductMailer < ApplicationMailer
    def delivery_email
  @product = params[:product]

  mail(
    to: "test@example.com",
    subject: "TEST"
  )
end

end

