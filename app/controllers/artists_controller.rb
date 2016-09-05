class ArtistsController < ApplicationController

  def index
    @condition = params[:condition]
    @artists = Artist.filter(@condition).sort
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
