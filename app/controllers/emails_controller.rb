class EmailsController < ApplicationController

  def index
    @email = Email.new
  end

  def new
    @email = Email.new
  end

  def show
    @email = Email.find_by(id: params[:id])
  end


  def create
    @email = Email.new(email_params)
    @email.send_email
    respond_to do |format|
      if @email.save
        format.html { redirect_to email_path(@email), notice: "Email has been Successfully sent to #{@email.email} please check your inbox or spam" }
        format.json {  }
      else
        format.html { render :new, alert: 'You are unable to send email, please try again.' }
        format.json {  }
      end
    end
  end

  private
  def email_params
    params.require(:email).permit(:title, :email, :description)
  end

end
