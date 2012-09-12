class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body, :girl, :slug, :website
end
