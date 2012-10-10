class Ticket < ActiveRecord::Base
  attr_accessible :description, :status, :title
  has_and_belongs_to_many :people
end
