class InviteMailer < ApplicationMailer
    default from: "ross@alantreadway.net"
  
    def invite(address, title, description, date_time)
        @title = title
        @description = description
        @date_time = date_time
        mail(to: address, subject: 'Event Invite')
    end
end
  