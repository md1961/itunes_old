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
      params.require(:track).permit(:track_id, :name, :artist, :album_artist, :composer, :album, :genre, :kind, :size, :total_time, :start_time, :disc_number, :disc_count, :track_number, :track_count, :year, :bpm, :date_modified, :date_added, :bit_rate, :sample_rate, :comments, :volume_adjustment, :play_count, :play_date, :play_date_utc, :skip_count, :skip_date, :release_date, :rating, :album_rating, :album_rating_computed, :normalization, :sort_album_artist, :compilation, :artwork_count, :sort_artist, :sort_composer, :sort_album, :sort_name, :persistent_id, :disabled, :track_type, :protected, :purchased, :has_video, :hd, :video_width, :video_height, :music_video, :file_type, :location, :file_folder_count, :library_folder_count)
    end
end
