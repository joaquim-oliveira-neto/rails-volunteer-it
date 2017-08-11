class NgoMailer < ApplicationMailer

  def welcome(ngo)
    @ngo = ngo  # Instance variable => available in view

    mail(to: @ngo.email, subject: 'Seja bem vindo ao VolunteerIT!')
    # This will render a view in `app/views/user_mailer`!
  end

end
