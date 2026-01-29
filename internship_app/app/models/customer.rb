class Customer < ApplicationRecord

  #day 14
  #single avatar attachment
  has_one_attached :avatar
  # if it is not active text or storage table, db:migrate is not needed.
  #whitelisting is not needed for active storage as rails handles it internally.
  #day 13
  has_rich_text :profile #kinda a styling to action text table in db schema
  # # Day 10
  # scope :unique_email, -> {where(email: "san@gmail.com").pluck( :email)} #model name and table name are defaultly fixed by rails without us giving any aias name.
  # scope :whitelisted_products,  -> { where("id IN (?)", [1, 2, 3]) }
  # scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) } 
  # scope :blacklisted_emails, ->(customer_emais) { where(id: customer_emails) } 
  # scope :blacklisted_customers, -> { where(id: [1, 2]) }
  scope :blacklisted_customers, ->(ids) { where(id: ids) }

  # # scope with arguements.
  # scope :whitelisted_products,  -> { where("id IN (?)", [1, 2, 3]) }

  # # Day 9
  # validates :name, presence: true

  # validates :email,
  #           presence: true,
  #           uniqueness: true,
  #           format: {
  #             with: URI::MailTo::EMAIL_REGEXP,
  #             message: "is not a valid email"
  #           }

  #   def check_email
  #       #if email exists
  #   end
  #   def check_name
  #       #check if it has alphabets only
  #   end
  # scope :unique_email, -> {distinct.where (email:email)} #model name and table name are defaultly fixed by rails without us giving any aias name.
  # # obj attributes, table cols
  # #check repeated emails
  # validates :name, presence: true

  # validates :email,
  #           presence: true,
  #           uniqueness: true,
  #           format: {
  #             with: URI::MailTo::EMAIL_REGEXP,
  #             message: "is not a valid email"
  #           }

  #   def check_email
  #       #if email exists
  #   end
  #   def check_name
  #       #check if it has alphabets only
  #   end
    
end

