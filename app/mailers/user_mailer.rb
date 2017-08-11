class UserMailer < ApplicationMailer

  def welcome(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Welcome to Le Wagon')
    # This will render a view in `app/views/user_mailer`!
  end

  def welcome_project(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Tem um voluntário querend desenvolver o seu projeto!')
  end

end
