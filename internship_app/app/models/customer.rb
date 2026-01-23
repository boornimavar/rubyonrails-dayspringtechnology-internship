class Customer < ApplicationRecord
   class Customer < ApplicationRecord
  validates :name, presence: true

  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: URI::MailTo::EMAIL_REGEXP,
              message: "is not a valid email"
            }
end

    # def check_email
    #     #if email exists
    # end
    # def check_name
    #     #check if it has alphabets only
    # end
    
end

