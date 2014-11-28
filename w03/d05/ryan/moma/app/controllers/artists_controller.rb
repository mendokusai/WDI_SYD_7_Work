class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to @artist
  end

  def index
    @artists = Artist.all
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_path
  end


  private

    def artist_params
        params.require(:artist).permit(
          :first_name,
          :last_name,
          :nationality,
          :date_of_birth,
          :period,
          :image
        )
    end
end