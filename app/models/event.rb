class Event < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible  :eventName,:description,:eventType,:image,:language,:certificate,:startDate, :endDate 
end
