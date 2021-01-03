class MessagesController < ApplicationController
  def index; end

  def send_email
    msg = Message.new(message_params)

    if msg.save
      MessageMailer.send_email(email: msg.email, subject: msg.subject, body: msg.body).deliver_later
      flash[:success] = "OK"
    else
      flash[:fault] = "Not OK"
    end

    redirect_to root_path
  end

  private

  def message_params
    params.permit(:email, :subject, :body)
  end
end
