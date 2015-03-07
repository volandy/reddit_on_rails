class PagesController < ApplicationController
	def index 
		@links = Link.paginate(:per_page => 20, :order => 'id', :page => params[:page])
	end

end
