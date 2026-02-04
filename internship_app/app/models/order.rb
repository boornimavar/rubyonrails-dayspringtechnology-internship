 class Order < ApplicationRecord
      has_many :products, foreign_key: product_id
      #one wat hrough reference and other like this
    end
