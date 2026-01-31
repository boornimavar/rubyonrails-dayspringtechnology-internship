#day 9 validations and rails model logic
#after rails 7 -> validation is default even if we dont manually specify it
# if we use encrypt/decrypt in models, rails handles it automatically

# validations are written in models, not controllers

# two types of validations:
# 1. standard validations (built-in)
# 2. custom validations (when logic depends on conditions or other fields)

# built-in validations 

validates :name, presence: true
validates :price, numericality: true
validates :status, inclusion: { in: ["active", "inactive"] }
validates :name, format: { with: /\A[a-z0-9]+\z/i }

# custom validation, when rule depends on another column.

validate :check_active_requirements

def check_active_requirements
  if status == "active" && price.to_f <= 0
    errors.add(:price, "must be > 0 when active")
  end
end


# custom validation using two columns

validate :price_and_stock_when_active

def price_and_stock_when_active
  return unless status == "active"

  if price.to_f <= 0
    errors.add(:price, "must be > 0 when active")
  end

  if stock.to_i <= 0
    errors.add(:stock, "must be > 0 when active")
  end
end


# rails dirty tracking

validate :stock_cannot_increase_when_inactive

def stock_cannot_increase_when_inactive
  return unless status == "inactive"

  if stock_changed? && stock > stock_was
    errors.add(:stock, "cannot increase when inactive")
  end
end


# showing errors on UI happens through _form.html.erb 

# <%= form_with(model: product) do |f| %>
#   <% if product.errors.any? %>
#     <% product.errors.full_messages.each do |msg| %>
#       <%= msg %>
#     <% end %>
#   <% end %>
# <% end %>

class ProfanityValidator < ActiveModel::EachValidator
  BAD_WORDS = %w[damn
  badword
  crap
  hell
  idiot
  stupid
  dumb
  fool
  ugly
  loser
  bastard]

  def validate_each(record, attribute, value)
    if BAD_WORDS.any? { |word| value.to_s.downcase.include?(word) }
      record.errors.add(attribute, "contains inappropriate language")
    end
  end
end