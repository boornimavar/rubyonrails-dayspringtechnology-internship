class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products
  def index
    @products = Product.all
  end

  # GET /products/1
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  def out_of_stock
    @products = Product.out_of_stock
    render :index
  end

  # POST /products
  def create
  @product = Product.new(product_params)
  respond_to do |format|
      if @product.save # when you trigger a email, it has to be set after saving obj (.save)
        ProductMailer.with(product:@product).delivery_email.deliver_now


        format.html { redirect_to @product, notice: "successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
end


  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      redirect_to @product, notice: "Product was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
    redirect_to products_path, notice: "Product was successfully destroyed."
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :invoice, :description, :price, :stock, :product_email, items:[])
  end

end
