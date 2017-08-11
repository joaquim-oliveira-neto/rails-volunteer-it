class VolunteerMailer < ApplicationMailer

  def welcome(volunteer)
    @volunteer = volunteer  # Instance variable => available in view

    mail(to: @volunteer.email, subject: 'Seja bem vindo ao VolunteerIT!')
    # This will render a view in `app/views/user_mailer`!
  end

end
