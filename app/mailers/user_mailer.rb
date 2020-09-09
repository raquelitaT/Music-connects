class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.requestmail.subject
  #
  def requestmail(user)
    @user = user


    mail to: user.email, subject: "News about your jam session request"
  end
end
