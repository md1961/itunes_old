class ArtistsController < ApplicationController

  def index
    @artists = Artist.all.sort_by(&:name)
  end
end
