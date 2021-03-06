class LinksController < ApplicationController

  def index
    @links = Link.all
    @vote = Vote.new
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      flash[:notice] = "Link was successfully created"
      redirect_to links_path
    else
      render 'new'
    end
  end

  private
  def link_params
    params.require(:link).permit(:name, :url)
  end
end
