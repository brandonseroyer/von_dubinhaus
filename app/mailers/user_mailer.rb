class UserMailer < ApplicationMailer
  default from: 'notifications@vondubinhaus.com'


  def comment_email(dog)
    @dog = dog
    @user = 'brandonseroyer@gmail.com'
    mail(to: @user, subject: 'A New Comment has been made on www.vondubinhaus.com')
  end
end
