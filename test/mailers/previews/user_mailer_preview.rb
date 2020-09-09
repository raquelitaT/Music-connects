# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/requestmail
  def requestmail
    user = User.last
    UserMailer.requestmail(user)
  end

end
