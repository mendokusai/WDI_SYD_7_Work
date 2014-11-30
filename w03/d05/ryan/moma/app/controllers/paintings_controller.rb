class PaintingsController < ApplicationController
	def create
		@artist = Artist.find(params[:artist_id])
		@painting = @artist.paintings.create(painting_params)
		redirect_to artist_path(@artist)
	end

	def destroy
		@artist = Artist.find(params[:artist_id])
		@painting = @artist.paintings.find(params[:id])
		@painting.destroy
		redirect_to artist_path(@artist)
	end

	def show
		@artist = Artist.find(params[:artist_id])
		@painting = @artist.paintings.find(params[:id])
	end
	
	private
		def painting_params
			params.require(:painting).permit(:title, :year, :medium, :style, :image)
		end
end
