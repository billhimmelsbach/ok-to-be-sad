class MessagesController < ApplicationController
  include SessionsHelper
  
  def new
    @message = Message.new
    @messages = Message.order('created_at DESC')
  end

  def create
    if current_user
      @message = current_user.messages.build(message_params)
      if @message.save
        flash[:success] = 'Your message was successfully posted!'
      else
        flash[:error] = 'Your message cannot be saved.'
      end
    end
    redirect_to root_url
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
