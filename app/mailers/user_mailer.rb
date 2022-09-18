class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.user_created.subject
  #
  def user_created
   
    @user = params[:user]
    @task = params[:task]
    mail(to: @user.email,subject:"Task is Assigned")
  end
    
  def task_reminder
   
    @user = params[:user]
    @task = params[:task]
    mail(to: @user.email,subject:"Task Reminder")
  end
    
end 