class Customer < ActiveRecord::Base
   attr_accessible :emailid, :password, :password_confirmation
   
   
   VALID_PASSWORD_REGEX = /^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/
   validates_confirmation_of :password
   validates :password, :on => :create, presence: true, format: { with: VALID_PASSWORD_REGEX }
   
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :emailid, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
