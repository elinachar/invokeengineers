class StaticPagesController < ApplicationController
  def index
  end

  def about
  end

  def contact_form_submitted
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @phone = params[:phone]
    @message = params[:message]
    UserMailer.contact_form(@first_name, @last_name, @email, @phone, @message).deliver_now
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Contact Message was successfully submited' }
      format.json { render :show, status: :created, location: root_path }
      format.js
    end
  end
end
