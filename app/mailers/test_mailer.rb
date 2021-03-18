class TestMailer < ApplicationMailer

  def test_email(email)
    @email = email
    mail(to: email.email, subject: email.title || "Test Email", body: email.description )
  end

end
