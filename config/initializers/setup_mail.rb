ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :user_name => "donot.reply.codejam@gmail.com",
    :port => 587,
    :domain => "gmail.com",
    :password => "codejam2015",
    :authentication => "plain"
}