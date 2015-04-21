class PaintingsController < ApplicationController

before_action :set_painting, only: [:show, :edit, :update, :destroy]
def index
  	@paintings = Painting.all
  end

  def new
  	@painting = Painting.new
    @artists = Artist.all.map { |artist| [artist.name, artist.id] }
    @museums = Museum.all.map { |museum| [museum.name, museum.id] }
  end

  def show
  end

  def create
  	 @painting = Painting.new(painting_params)

    if @painting.save
      redirect_to @painting
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

private
  def painting_params
    params.require(:painting).permit(:title, :image, :museum_id, :artist_id)
  end
end
