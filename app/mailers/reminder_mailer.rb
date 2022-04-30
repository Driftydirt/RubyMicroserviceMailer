class ReminderMailer < ApplicationMailer
    default from: "ross@alantreadway.net"
  
    def reminder(address, title, description, date_time)
        @title = title
        @description = description
        @date_time = date_time
        mail(to: address, subject: 'Reminder')
    end
end
  