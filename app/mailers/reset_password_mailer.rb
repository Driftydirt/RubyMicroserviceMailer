class ResetPasswordMailer < ApplicationMailer
    default from: "ross@alantreadway.net"
  
    def reset_password(address, token)
        reset_password_link(token)
        mail(to: address, subject: 'Password Reset')
    end

    def reset_password_link(token)
        @link = "http://localhost:3000/reset_password/?token=#{token}"
    end

end
  