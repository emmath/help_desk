class TicketMailer < ActionMailer::Base
  default from: "helpdesk@example.com"

  def new_ticket(ticket)
    @ticket = ticket

    mail to: "emmatrevena@gmail.com", subject: ticket.subject
  end
end
