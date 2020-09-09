class RequestMailer < ApplicationMailer
   def accepted_request(request)
    @request = request
    @user = request.user


    mail(
      to: @request.user.email, subject: "News about your jam session request"
      )
  end

  def declined_request(request)
    @request = request
    @user = request.user


    mail(
      to: @request.user.email, subject: "News about your jam session request"
      )
  end

end
