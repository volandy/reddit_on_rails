class Link < ActiveRecord::Base
   attr_accessible :title, :url, :id
   has_many :comments
   belongs_to :user
   has_many :votes
end
