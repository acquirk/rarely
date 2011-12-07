class Notifier < ActionMailer::Base
  default :from => "adam@greatamericansomething.com"

  # send a signup email to the user, pass in the user object that contains the user's email address
  def signup_email(user)
    mail( :to => user.email, 
          :subject => "Thanks for signing up" )
  end

  def post_email(user)
    mail( :to => user.followers.email, 
          :subject => "Posted",
          :content => :micropost.content )
  end
end