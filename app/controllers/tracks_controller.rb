class TracksController < ApplicationController
  before_action :set_track, only: [:show, :edit, :update, :destroy]

  def index
    @tracks = Track.all
  end

  def show
  end

  def new
    @track = Track.new
  end

  def edit
  end

  def create
    @track = Track.new(track_params)

    if @track.save
      redirect_to @track, notice: t(".notice") % {model_name: Track.model_name.human}
    else
      render :new
    end
  end

  def update
    if @track.update(track_params)
      redirect_to @track, notice: t(".notice") % {model_name: Track.model_name.human}
    else
      render :edit
    end
  end

  def destroy
    @track.destroy
    redirect_to tracks_url, notice: t(".notice") % {model_name: Track.model_name.human}
  end

  private
    def set_track
      @track = Track.find(params[:id])
    end

    def track_params
      params.require(:track).permit(:track_id, :name, :artist, :composer, :album, :genre, :kind, :size, :total_time, :disc_number, :disc_count, :track_number, :track_count, :year, :bpm, :date_modified, :date_added, :bit_rate, :sample_rate)
    end
end
