class Api::ListsController < ApplicationController
  before_action :set_list, only: [:show]

  def index
    @lists = List.all.includes(:items)
    render json: @lists
  end

  def create
    # list = current_user.lists.new(list_params)
    list = List.new(list_params)
    render json: list
  end

  def show
    render json: @list
  end

  private

  def list_params
    params.require(:list).permit(:title)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
