class Sitecustomer < ActiveRecord::Base
  # attr_accessible :title, :body
  
   attr_accessible  :email, :password
   
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
   
   VALID_PASSWORD_REGEX = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/
   validates :password, :on => :create, presence: true,format: { with: VALID_PASSWORD_REGEX }
end
