class Comment < ActiveRecord::Base
   attr_accessible :message, :user_id, :link_id
   belongs_to :link
end
