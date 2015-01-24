class PagesController < ApplicationController
	def index 
		@links = Link.paginate(:per_page => 5, :order => 'id', :page => params[:page])
		params[:per_page] ||= 25
		params[:page]     ||= 1
		
	end
end
