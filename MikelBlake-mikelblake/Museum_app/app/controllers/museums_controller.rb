class MuseumsController < ApplicationController
  def index
  	@museums = Museum.all
  end

  def new
  	@museum = Museum.new
  end

  # def show
  # 	@museum = Museum.find(params[:id])
  # end

  def create
  	@museum = Museum.new(museum_params)

    if @museum.save
      redirect_to @museum
    else
      render 'new'
    end
  end

  # def edit
  # 	@museum = Museum.find(params[:id])
  # end

  def update
  	@museum = Museum.find(params[:id])

  	if @museum.update(museum_params)
      redirect_to @museum
    else
      render 'edit'
    end
  end

private

def museum_params
	params.require('museum').permit(:name, :city)
end

end
