class Product < ApplicationRecord
  #day 10 scope
  # scope :out_of_stock, -> { where("stock <= ?", 0) } #views, controllers
  scope :out_of_stock, -> { where(stock: 0) }

  # scope joins_scope, -> {joins(name of the col and table you are jonining)}
  # scope :whitelisted_products,  -> { where("id IN (?)", [1, 2, 3]) }
  # scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) } 
  # scope :sequel_scope, -> query {} #full sequel query can be used inside, not necessariy ruby query.
  
  #day 8 tasks
  # def self.available
  #   where("stock > ?", 0)
  # end

  # def check_availability
  #   stock > 0
  # end

  # def apply_discount
  #   case price
  #   when 500..Float::INFINITY then price - 50
  #   when 400...500            then price - 40
  #   when 300...400            then price - 30
  #   else                           price - 20
  #   end
  # end

  # def total_amount
  #   return "Product not available" unless check_availability
  #   discounted_price = apply_discount
  #   Math.sqrt(discounted_price**2).to_i
  # end

  #day 9 tasks
  # pre written validation
  # validates :stock,
  #           numericality: true
  #           length: { minimum: 10, maximum: 20 }
  # validates :description,
  #           length: { maximum: 500 }

  # regax validation to not alow special validation
  #using regax whether the product name is alphanumeric a-z,0-9
  # validates :name,
  #           presence: true, 
  #           format: { with: /\\A[a-z0-9]+\\z/i, message: "only numbers and alphabets are apllicable"}
  
            
  #custom validation for price if the status is active, add price
  # validate :check_status
  # def check_status
  # return unless status == "active"
  # if status == "active" && price.to_f <= 0
  #   errors.add(:price, "must be greater than 0 when product is active")
  # end
  # if status == "active" && stock.to_i <= 0
  #   errors.add(:stock, "must be greater than 0 when product is active")
  # end
  # end

  #if active is false stock cant be incremented
  # validate :stock_increase

  # def stock_increase
  #   return unless status == "inactive"

  #   if stock_changed? && stock > stock_was
  #     errors.add(:stock, "cannot be increased when product is inactive")
  #   end
  # end

# use inbuilt validation , accept only if its checked, acceptance : true
# wanted to use acceptance: true here
=begin
but acceptance validation works only with checkbox (true/false).
since status is coming from select as active or inactive,
acceptance validation won't work here.
=end

  # #custom validation
  # validate :check_stock  #calling the custom method
  # #if stock is zero, price should not be added
  # def check_stock
  #   if stock == 0 && price > 0
  #   #logging errors
  #    errors.add(:base, "stock aint available")
  #   end
  # end


  

  
end



