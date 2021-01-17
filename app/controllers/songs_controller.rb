class SongsController < ApplicationController

  def show
    song_params_id
  end

  def new
    @song = Song.new
  end

  private 
    def song_params_id
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
