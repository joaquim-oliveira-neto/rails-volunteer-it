class NgoMailer < ApplicationMailer

  def welcome(ngo)
    @ngo = ngo  # Instance variable => available in view

    mail(to: @ngo.user.email, subject: 'Seja bem vindo ao VolunteerIT!')
  end

end
