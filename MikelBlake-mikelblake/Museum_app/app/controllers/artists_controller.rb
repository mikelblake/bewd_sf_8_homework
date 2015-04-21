class ArtistsController < ApplicationController

def index
  	@paintings = Artist.all
  end

  def new
  	@artist = Artist.new
  end

  # def show
		# @artist = Artist.find(params[:id])
  # end

  def create
  end

  # def edit
  # 	@artist = Artist.find(params[:id])
  # end

  def update
  	@artist = Artist.find(params[:id])
  end

private

	def artist_params
    params.require('artist').permit(:name, :image)
	end

end
