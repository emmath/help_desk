class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = Ticket.new(params[:ticket])
    if @ticket.save
       #TicketMailer.new_ticket(@ticket).deliver
       redirect_to @ticket, notice: "Hey stranger! Your ticket was submitted!"
    else
       render :new
    end
  end

  def update
    @ticket = Ticket.find(params[:id])
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
  end
end
