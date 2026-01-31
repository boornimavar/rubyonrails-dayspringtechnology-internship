class OrderController < ApplicationController
     # GET /products
  def index
    @orders = Order.all
  end

end
