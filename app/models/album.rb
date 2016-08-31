class Album
  include ActiveModel::Conversion
  include ActiveModel::Naming
  extend ActiveRecordLikeFinders

  attr_reader :id, :name, :artist, :tracks

    @@initial_id = 1

    def initialize(name, artist_name)
      @id = @@initial_id
      @name = name
      @artist = Artist.find_by(name: artist_name)

      @@initial_id += 1
    end
    private_class_method :new

  def self.all
    @all_instances ||= Track.pluck(:album, :artist).uniq.map { |name, artist_name| new(name, artist_name) }
  end

  def tracks
    Track.where(album: name).order(:track_number)
  end

  def year
    tracks.first.year
  end

  def to_s
    name
  end

  def ==(other)
    name == other.name
  end

  def persisted?
    false
  end

  def to_param
    id.to_s
  end
end
