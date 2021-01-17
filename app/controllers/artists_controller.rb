class ArtistsController < ApplicationController

  def show
    artist_params_id
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  def edit
    artist_params_id
  end

  def update
    @artist = Artist.new(artist_params)
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private
    def artist_params_id
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit!
    end
end
