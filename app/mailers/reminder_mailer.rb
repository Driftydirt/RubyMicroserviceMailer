class ReminderMailer < ApplicationMailer
    default from: "ross@alantreadway.net"
  
    def reminder(address, event)
        @reminder = event
        mail(to: address, subject: 'reminder')
    end
end
  