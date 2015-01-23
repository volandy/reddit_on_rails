class Link < ActiveRecord::Base
   attr_accessible :title, :url, :id
   
   belongs_to :user
end
