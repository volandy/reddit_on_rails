class LinksController < ApplicationController

  def show
  	@link = Link.find(params[:id])
    @comment = Comment.new
  end

  def new
  	@link = Link.new
  end

  def create
  	@link = Link.new(links_params)
  	if @link.save
      render :create
    else
      render :new
    end
  end

  private
  	def links_params
  		params.require(:link).permit(:title, :url, :id)
	end
end
