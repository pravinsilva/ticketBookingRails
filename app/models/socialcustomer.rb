class Socialcustomer < ActiveRecord::Base
  # attr_accessible :title, :body
    attr_accessible :email, :oauth_expires_at, :oauth_token, :provider, :uid
  def self.from_omniauth(auth)
    where(auth.slice(:provider,:uid)).first_or_initialize.tap do |socialcustomer|
      
      emailid=auth.info.email
      socialcustomer.provider = auth.provider
      socialcustomer.uid = auth.uid
      socialcustomer.email = auth.info.email
      socialcustomer.oauth_token = auth.credentials.token
      socialcustomer.oauth_expires_at = Time.at(auth.credentials.expires_at)
       
      if socialcustomer.save
         @customer = Customer.new( :email => emailid)
         @customer.save
      end   
    end
  end
end
