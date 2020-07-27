class StockItemsController < ApplicationController
  def index
    render_200(store_finder.stock_items.page(params[:page]))
  end

  def create
    actions_handler(action: :save, resource: store_finder.stock_items.new(stock_items_params))
  end

  def update
    actions_handler(action: :update, resource: stock_item_finder, attrs: stock_items_params)
  end

  def destroy
    actions_handler(action: :destroy, resource: stock_item_finder)
  end

  def increase
    actions_handler(action: :increase, resource: stock_item_finder, attrs: stock_items_quantity_params)
  end

  def decrease
    actions_handler(action: :decrease, resource: stock_item_finder, attrs: stock_items_quantity_params)
  end

  private

  def stock_items_quantity_params
    params.require(:stock_item).permit(:quantity)
  end

  def stock_items_params
    params.require(:stock_item).permit(:product_id, :store_id, :quantity)
  end

  def stock_item_finder
    store_finder.stock_items.lock.find(params[:id])
  end

  def store_finder
    Store.find(params[:store_id])
  end
end
