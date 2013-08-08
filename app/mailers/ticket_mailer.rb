class TicketMailer < ActionMailer::Base
  default from: "helpdesk@example.com"

  def new_ticket(ticket)
    @ticket = ticket

    mail to: "visibleemma@gmail.com", subject: ticket.subject
  end
end
