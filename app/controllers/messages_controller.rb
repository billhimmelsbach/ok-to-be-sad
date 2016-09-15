class MessagesController < ApplicationController
  include SessionsHelper

  def new
    if current_user
      @message = Message.new
      @messages = Message.order('created_at DESC')
    else
      flash[:error] = 'Please sign in.'
      redirect_to new_session_path
    end
  end

  def create
    respond_to do |format|
      if current_user
        @message = current_user.messages.build(message_params)
        if @message.save
          flash[:success] = 'Thanks for using chat!'
        else
          flash[:error] = 'Your message could not be saved.'
        end
        format.html {redirect_to root_url}
        format.js
      else
        format.html {redirect_to root_url}
        format.js {render nothing: true}
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
