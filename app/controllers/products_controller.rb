class ProductsController < ApplicationController

 before_filter(:find_product, only:[:show, :destroy, :edit, :update] )


  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    flash[:notice] = "job done"
    redirect_to(@product)
    # takes to show (look at rake routes)
    # all that is passed is the set of params on get request
    # instance variable ok
  end

  def edit
  end

  def update
    @product.update_attributes(product_params)
    redirect_to(@product)
  end

  def destroy

    @product.destroy
    redirect_to(products_url)
    # cannot redirect to nil -
  end

  private
    def product_params
      params.require(:product).permit(:title, :description)
    end

   def find_product
     @product = Product.find(params[:id])
   end

end
