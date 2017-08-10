class UserMailer < ApplicationMailer

  def creation_confirmation(user)
    @user = user

    mail(
      to:       @user.email,
      subject:  "#{@user.email} created!"
    )
  end

  def welcome(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Welcome to Le Wagon')
    # This will render a view in `app/views/user_mailer`!
  end

end
