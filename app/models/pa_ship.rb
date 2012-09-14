class PaShip < ActiveRecord::Base
  belongs_to :product
  belongs_to :attri
  attr_accessible :product_id, :attri_id
end
