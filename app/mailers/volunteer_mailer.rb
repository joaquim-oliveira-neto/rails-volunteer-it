class VolunteerMailer < ApplicationMailer

  def welcome(volunteer)
    @volunteer = volunteer  # Instance variable => available in view

    mail(to: @volunteer.user.email, subject: 'Welcome to Le Wagon')
    # This will render a view in `app/views/user_mailer`!
  end

end
