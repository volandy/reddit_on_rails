class PagesController < ApplicationController
	def index 
		@links = Link.paginate(:per_page => 10, :order => 'id', :page => params[:page])
	end

end
