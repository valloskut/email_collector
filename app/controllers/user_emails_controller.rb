class UserEmailsController < ApplicationController
  def new
    @email = UserEmail.new
  end

  def create
    @email = UserEmail.create params_email
    if @email.save
      redirect_to root_url, notice: 'Thank you for submitting your email. We will keep you posted.'
    else
      render 'new'
    end
  end

  private
  def params_email
    params[:user_email][:date_created] = Date.today
    params.required(:user_email).permit(:email_address, :date_created)
  end

end
