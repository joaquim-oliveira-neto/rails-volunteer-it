class VolunteerMailer < ApplicationMailer

  def welcome(volunteer)
    @volunteer = volunteer  # Instance variable => available in view
    # This will render a view in `app/views/user_mailer`!
    mail(to: @volunteer.user.email, subject: 'Seja bem vindo ao VolunteerIT!')
  end

end
