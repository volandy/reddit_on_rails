class LinksController < ApplicationController

  def show
  	@link = Link.find(params[:id])
  end

  def new
  	@link = Link.new
  end

  def create
  	@link = Link.new(links_params)
  	if @link.save
      render('show')
    else
      render('new')
    end
  end

  private
  	def links_params
  		params.require(:link).permit(:title, :url, :id)
	end
end
