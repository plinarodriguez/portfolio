class PortfolioController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def sendform
  	ContactMailer.email_contact(params).deliver
  	redirect_to contact_url, notice: "Your Contact Message has been sent"
  end


end