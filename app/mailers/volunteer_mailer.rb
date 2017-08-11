class VolunteerMailer < ApplicationMailer

  def welcome(volunteer)
    @volunteer = volunteer  # Instance variable => available in view
    mail(to: @volunteer.user.email, subject: 'Seja bem vindo ao VolunteerIT!')
  end

end
