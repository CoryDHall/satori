class ListsController < ApplicationController
  respond_to :json
  def index
    puts self
    @lists = List.all
    render json: @lists
  end
end
