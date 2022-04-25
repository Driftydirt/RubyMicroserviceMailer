class ReminderMailerPreview < ActionMailer::Preview
    def reminder_email
        reminder = Reminder.new(title: "title of event", description: "description of event")
        
        
        ReminderMailer.with(reminder: reminder).reminder
    end
end