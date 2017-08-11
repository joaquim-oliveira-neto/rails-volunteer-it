class UserMailer < ApplicationMailer

  def welcome(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Seja bem vindo ao VolunteerIT!')
    # This will render a view in `app/views/user_mailer`!
  end

  def welcome_project(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Um voluntário quer desenvolver o projeto de sua NGO!')
  end

end
