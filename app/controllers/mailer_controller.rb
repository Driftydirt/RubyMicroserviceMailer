class MailerController < ApplicationController

    def reminder
        event = Reminder.new(params["event"].permit(:title, :description))
        emails = params["emails"]

        emails.each do |e|
            ReminderMailer.reminder(e,event.to_json).deliver_later
        end

    end

    def reset_password
        ResetPasswordMailer.reset_password(params["email"], params["token"]).deliver_later
    end
    
end
