class Attri < ActiveRecord::Base
  attr_accessible :name
  has_many :properties
  has_many :pa_ships
  has_many :products, :through => :pa_ships
end
