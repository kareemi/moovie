class MooviesController < ApplicationController
  def index
    @moovies = Moovie.all
  end

  def show
    @moovie = Moovie.find(params[:id])
  end

  def create
    @moovie = Moovie.create(moovie_params)
    if @moovie.save
      redirect_to @moovie
    else
      render json: @moovie.errors, status: 422
    end
  end

  def update
    @moovie = Moovie.find(params[:id])
    if @moovie.update(movie_params)
      redirect_to @moovie
    else
      render json: @moovie.errors, status: 422
    end
  end

private

  def moovie_params
    params.require(:moovie).permit(:title, :cowscription)
  end
end
