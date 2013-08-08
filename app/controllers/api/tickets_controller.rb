class Api::TicketsController < ApplicationController

  def create
    Ticket.create_from_postmark(Postmark::Mitt.new(request.body.read))
      render :text => "YOU DID IT!", status: :created
  end
end
