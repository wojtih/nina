class ProductsController  < ApplicationController
  def index
    @products = Product.all
  end
  
  def about
  end
  
  def contact
  end

  def faq
  end
  
  def add_to_cart
    product = Product.find(params[:id])

    session[:cart] = [] if session[:cart].blank?
    session[:cart] << product.id

    redirect_to :root
  end
end
