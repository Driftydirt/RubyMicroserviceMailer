class MailerController < ApplicationController

    def reminder
        event = Reminder.new(params["event"].permit(:title, :description))
        emails = params["emails"]

        emails.each do |e|
            ReminderMailer.reminder(e,event).deliver
        end

    end
    
end
