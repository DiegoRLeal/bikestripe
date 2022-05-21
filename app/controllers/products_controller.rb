class ProductsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    #authorize @product
  end

  def edit
    #authorize @product
  end

  def create
    @product = Product.new(product_params)
    #authorize @product
    @product.user = current_user
    if @product.save
      redirect_to @product, notice: "Product was sucessfully created."
    else
      render :new
    end
  end

  def update
    #authorize @product
    if @product.update(product_params)
      redirect_to @product, notice: "Product was sucessfully updated."
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url, notice: "Product was sucessfully destroyed."
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:sku, :localization, :price, :bike_condition, photos: [])
  end
end
