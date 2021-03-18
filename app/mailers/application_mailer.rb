class ApplicationMailer < ActionMailer::Base
  default from: 'test@testing.com'
  layout 'mailer'
end
