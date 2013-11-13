class CustomerMailer < ActionMailer::Base
default from: "bookevents13@gmail.com"
  def registration_confirmation(sitecustomer)
    mail(:to =>sitecustomer.email , :subject => "Registered")
    
  end
end
