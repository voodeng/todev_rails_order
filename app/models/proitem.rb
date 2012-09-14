class Proitem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  attr_accessible :someline,:product_id
end
