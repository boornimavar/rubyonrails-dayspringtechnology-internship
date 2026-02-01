 class Order < ApplicationRecord
      validates :details, presence: true
      validates :count, presence: true
    end
