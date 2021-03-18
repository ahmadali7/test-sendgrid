class Email < ApplicationRecord

  validates :email, :description, presence:true

  def send_email
    mail = TestMailer.test_email(self)
    # binding.pry
    mail.deliver_now
  end


end
