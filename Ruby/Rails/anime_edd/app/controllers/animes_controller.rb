class AnimesController < ApplicationController
  def index
    @animes = Anime.all
  end

  def new
  end

  def create
    Anime.create(name: params[:name])
    redirect_to '/animes'
  end

  def show
    @anime = Anime.find(params[:id])
  end

  def edit
    @anime = Anime.find(params[:id])
  end

  def update
    anime = Anime.find(params[:id])
    anime.name = params[:name]
    anime.save
    redirect_to '/animes'
  end
  def destroy
    anime = Anime.find(params[:id])
    anime.destroy
    redirect_to '/animes'
  end


end
