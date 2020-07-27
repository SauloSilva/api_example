class StoresController < ApplicationController
  def index
    render_200(Store.page(params[:page]))
  end

  def create
    actions_handler(action: :save, resource: Store.new(store_params))
  end

  def update
    actions_handler(action: :update, resource: store_finder, attrs: store_params)
  end

  def destroy
    actions_handler(action: :destroy, resource: store_finder)
  end

  private

  def store_params
    params.require(:store).permit(:name, :address)
  end

  def store_finder
    Store.find(params[:store_id])
  end
end
