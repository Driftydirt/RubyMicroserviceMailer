class MailerController < ApplicationController

    def reminder
        address = params["email"]
        event = Reminder.new(params["event"].permit(:title, :description))
        puts address
        puts "test"
        puts event
        ReminderMailer.reminder(address, event).deliver
    end
    
end
