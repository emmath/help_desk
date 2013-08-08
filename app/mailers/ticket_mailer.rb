class TicketMailer < ActionMailer::Base
  default from: "emma.hardman@outlook.com"

  def new_ticket(ticket)
    @ticket = ticket

    mail to: "emmatrevena@gmail.com", subject: ticket.subject
    reply_to:
  end

  def receive(email)

end
