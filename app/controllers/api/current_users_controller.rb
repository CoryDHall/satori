class Api::CurrentUsersController < ApplicationController

  def show
    user = logged_in? ? current_user : User.new
    render json: user, serializer: CurrentUserSerializer
  end
end
