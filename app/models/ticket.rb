class Ticket < ActiveRecord::Base
  attr_accessible :description, :from, :subject
end
