class TicketMailer < ActionMailer::Base
  default from: "emma.hardman@outlook.com"

  def new_ticket(ticket)
    @ticket = ticket

    mail to: "emmatrevena@gmail.com",
      subject: "New Ticket, yo! #{ticket.subject} number #{ticket.id}",
      reply_to: "ffc5dbcb05c894ed1b266327809aa297+#{ticket.id}@inbound.postmarkapp.com"
  end
end
