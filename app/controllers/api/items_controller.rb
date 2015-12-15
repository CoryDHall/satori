class Api::ItemsController < ApplicationController
  before_action :set_item, only: [:show]

  def show
    render json: @item
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end
end
