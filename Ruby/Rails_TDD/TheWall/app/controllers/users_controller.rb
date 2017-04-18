class UsersController < ApplicationController
  def new
  end

  def create
    if check_account
      redirect_to '/messages'
    else
      @user = User.new(user_params)
        if @user.save
          flash[:notice] = ['User successfully created']
          session[:user_id] = @user.id
          redirect_to '/messages'
        else
          flash[:notice] = @user.errors.full_messages
          redirect_to :back
        end
      end
  end

  def logout
    session.delete(:user_id)
    redirect_to '/'
  end

  private
  def user_params
    params.require(:user).permit( :username, :first_name, :last_name)
  end

  def check_account
    user = User.find_by_username(params[:username])
    if user
      session[:user_id] = user.id
      return true
    else
      return false
    end
  end
end
