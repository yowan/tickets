class WelcomeController < ApplicationController
  def index
  	@people_with_tickets = Person.people_with_tickets
  	@people = Person.all
  end  
end
