class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.mail_id
  layout "mailer"
  
end
