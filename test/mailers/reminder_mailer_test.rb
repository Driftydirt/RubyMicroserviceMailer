require 'test_helper'

class ReminderMailerTest < ActionMailer::TestCase
    test "new reminder email" do
        email = ReminderMailer.reminder

        assert_emails 1 do
            email.deliver
        end
    end
end