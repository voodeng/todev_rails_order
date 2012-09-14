class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :proitems, :dependent => :destroy
end
