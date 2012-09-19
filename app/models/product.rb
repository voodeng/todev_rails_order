class Product < ActiveRecord::Base
  attr_accessible :name, :ptype, :attri_ids
  has_many :attris, :through => :pa_ships
  has_many :pa_ships
  has_many :proitems, :dependent => :destroy
  validates :name, :ptype, :presence => true
end
