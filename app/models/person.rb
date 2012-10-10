class Person < ActiveRecord::Base
  attr_accessible :name, :role
  has_and_belongs_to_many :tickets
  def self.people_with_tickets
  	self.joins(:tickets).all
  end
  def self.roles
  ["user", "admin"]
  end
end