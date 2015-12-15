class Api::ListsController < ApplicationController
  respond_to :json
  before_action :authenticate_user!

  def index
    @lists = current_user.lists
    render json: @lists
  end

  def create
    list = current_user.lists.new(list_params)
    render json: list
  end

  private

  def list_params
    params.require(:list).permit(:title, :description, config: [:author])
  end
end
