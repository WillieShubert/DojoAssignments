class UsersController < ApplicationController
  def index
    @users  = User.all
  end

  def create
    if User.create(user_params)
      redirect_to '/users'
    else flash[:errors] = user.errors.full_messages
      redirect_to :back
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :favorite_language)
  end

end
