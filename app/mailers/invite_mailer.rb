class InviteMailer < ApplicationMailer
    default from: "ross@alantreadway.net"
  
    def invite(address, creator, title, description, date_time)
        @title = title
        @description = description
        @date_time = date_time
        @creator = creator
        mail(to: address, subject: 'Event Invite')
    end

    def update(address, creator, title, description, date_time)
        @title = title
        @description = description
        @date_time = date_time
        @creator = creator
        mail(to: address, subject: 'Event Update')
    end

    def delete(address, creator, title, description, date_time)
        @title = title
        @description = description
        @date_time = date_time
        @creator = creator
        mail(to: address, subject: 'Event Deleted')
    end
end
  