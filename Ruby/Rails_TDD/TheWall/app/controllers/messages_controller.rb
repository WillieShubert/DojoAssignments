class MessagesController < ApplicationController
  before_action :check_session
  def index
    @current_user = User.find_by_id(session[:user_id])
    @messages = Message.all
    @comments = Comment.all
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to '/messages'
    else
      flash[:notice] = @message.errors.full_messages
      redirect_to '/messages'
    end
  end

  private
  def message_params
      params.require(:message).permit(:message, :user_id)
  end

  def check_session
    if !session[:user_id]
      redirect_to '/'
    end
  end

end
