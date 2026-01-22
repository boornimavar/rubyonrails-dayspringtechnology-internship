class Product < ApplicationRecord

  def self.available
    where("stock > ?", 0)
  end

  def check_availability
    stock > 0
  end

  def apply_discount
    case price
    when 500..Float::INFINITY then price - 50
    when 400...500            then price - 40
    when 300...400            then price - 30
    else                           price - 20
    end
  end

  def total_amount
    return "Product not available" unless check_availability
    discounted_price = apply_discount
    Math.sqrt(discounted_price**2).to_i
  end

end
