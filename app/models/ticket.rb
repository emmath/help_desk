mitt = Postmark::Mitt.new(request.body.read)
Ticket.create_from_postmark(mitt)

class Ticket < ActiveRecord::Base
  attr_accessible :description, :from, :subject

  def self.create_from_postmark(mitt)
    ticket.description = mitt.description
    ticket.save
  end

end
