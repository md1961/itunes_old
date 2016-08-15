class ArtistsController < ApplicationController

  def index
    @artists = Artist.all.sort_by(&:name)
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
