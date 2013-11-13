class Show < ActiveRecord::Base
  attr_accessible :eventId,:showDate,:startTime,:endTime,:screenId,:availableTickets,:price
end
