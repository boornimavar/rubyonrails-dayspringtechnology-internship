class Product < ApplicationRecord

  #Day16
  has_many :categories
  #Day 14
  # has_one_attached :items
  has_many_attached :items
  has_one_attached :invoice

  #Day 13
  has_rich_text :description

  # Day 10 scope
  scope :out_of_stock, -> { where(stock: 0) }

  # Day 8 tasks
  def check_availability
    stock.to_i > 0
  end

  def apply_discount
    case price.to_f
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

  # -------------------------
  # Validations (Day 9 tasks)
  # -------------------------

  validates :stock, numericality: true
  validates :description, length: { maximum: 500 }

  # using regex whether the product name is alphanumeric a-z,0-9
  # validates :name,
  #           presence: true,
  #           format: { with: /\A[a-z0-9]+\z/i,
  #                     message: "only numbers and alphabets are applicable" }

  # custom validation for price and stock if the status is active
  validate :check_status

  def check_status
    return unless status == "active"

    errors.add(:price, "must be greater than 0 when product is active") if price.to_f <= 0
    errors.add(:stock, "must be greater than 0 when product is active") if stock.to_i <= 0
  end

  # if inactive, stock cannot be increased
  validate :stock_increase

  def stock_increase
    return unless status == "inactive"

    if will_save_change_to_stock? && stock > stock_before_last_save.to_i
      errors.add(:stock, "cannot be increased when product is inactive")
    end
  end

  # custom validation
  # if stock is zero, price should not be added
  validate :check_stock

  def check_stock
    if stock.to_i == 0 && price.to_f > 0
      errors.add(:base, "stock aint available")
    end
  end
end
