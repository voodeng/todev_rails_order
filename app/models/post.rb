class Post < ActiveRecord::Base
  belongs_to :user 
  attr_accessible :body, :desc, :isbanner, :thum, :title
      default_scope order:  'id desc'
end