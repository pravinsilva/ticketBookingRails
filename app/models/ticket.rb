class Ticket < ActiveRecord::Base
  attr_accessible :showId,:customerId,:price,:seats
end
