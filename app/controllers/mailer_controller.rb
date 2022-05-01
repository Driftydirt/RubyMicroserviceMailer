class MailerController < ApplicationController

    def reminder
        emails = params["emails"]
        title = params["event"]["title"]
        description = params["event"]["description"]
        date_time = params["event"]["date_time"]

        emails.each do |e|
            ReminderMailer.reminder(e, title, description, date_time).deliver_later
        end

    end

    def reset_password
        ResetPasswordMailer.reset_password(params["email"], params["token"]).deliver_later
    end
    
    def invite
        emails = params["emails"]
        creator = params["creator"]
        title = params["event"]["title"]
        description = params["event"]["description"]
        date_time = params["event"]["date_time"]

        emails.each do |e|
            InviteMailer.invite(e, creator, title, description, date_time).deliver_later
        end
    end

    def update
        emails = params["emails"]
        creator = params["creator"]
        title = params["event"]["title"]
        description = params["event"]["description"]
        date_time = params["event"]["date_time"]

        emails.each do |e|
            InviteMailer.update(e, creator, title, description, date_time).deliver_later
        end
    end

    def delete
        emails = params["emails"]
        creator = params["creator"]
        title = params["event"]["title"]
        description = params["event"]["description"]
        date_time = params["event"]["date_time"]

        emails.each do |e|
            InviteMailer.delete(e, creator, title, description, date_time).deliver_later
        end
    end

end
