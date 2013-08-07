ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => CONFIG["SENDGRID_USERNAME"],
  :password             => CONFIG["SENDGRID_PASSWORD"],
  :authentication       => "plain",
  :enable_starttls_auto => true
}
