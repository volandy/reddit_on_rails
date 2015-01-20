class LinksController < ApplicationController

  def show
  	@link = Link.find(params[:link])
  end

  def new
  	@link = Link.new
  end

  def create
  	@link = Link.new(link_params)
  	if @link.save
      redirect_to(:action => 'show')
    else
      render('new')
    end
  end

  private
  	def link_params
  		params.require(:link).permit(:title, :url)
	end
end
