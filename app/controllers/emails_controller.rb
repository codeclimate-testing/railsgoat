class EmailsController < ApplicationController
  http_basic_authenticate_with name: "shopgirl", password: "youvegotmail"

  def index
    @emails = current_user.emails
    @email = Email.new
  end
end
