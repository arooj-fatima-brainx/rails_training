class ProductsController < ApplicationController
  # layout "inventory"
  #  layout :products_layout
  # layout "product", except: [:index, :rss]
  def index
    @product = Product.all
  end


  def show
    @product = Product.find(params[:id])
  end

  private
  def products_layout
    # @current_user.special? ? "special" : "products"
  end
end
