class ProductsController < ApplicationController
  def index
    render_200(Product.page(params[:page]))
  end

  def create
    actions_handler(action: :save, resource: Product.new(product_params))
  end

  def update
    actions_handler(action: :update, resource: product_finder, attrs: product_params)
  end

  def destroy
    actions_handler(action: :destroy, resource: product_finder)
  end

  private

  def product_finder
    Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :tax, :shipping)
  end
end
