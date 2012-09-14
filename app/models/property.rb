class Property < ActiveRecord::Base
  belongs_to :attri
  attr_accessible :attri_id,:name,:pdesc
end
