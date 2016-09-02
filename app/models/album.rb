class Album
  include ActiveModel::Conversion
  include ActiveModel::Naming
  extend ActiveRecordLikeFinders

  attr_reader :id, :name, :artist, :tracks

    @@initial_id = 1

    def initialize(name, artist_name, is_compilation=false)
      @id = @@initial_id
      @name = name
      @artist = Artist.find_by(name: artist_name)
      @is_compilation = is_compilation

      @@initial_id += 1
    end
    private_class_method :new

  def self.all
    @all_instances ||= make_all_instances
  end

    def self.make_all_instances
        Track.where(compilation: false).pluck(:album, :artist).uniq.map { |name, artist_name| new(name, artist_name) } \
      + Track.where(compilation: true ).pluck(:album         ).uniq.map { |name             | new(name, nil, true  ) }
    end
    private_class_method :make_all_instances

  def compilation?
    @is_compilation
  end

  def tracks
    Track.where(album: name).order(:track_number)
  end

  def total_time_in_sec
    tracks.map(&:total_time_in_sec).inject(&:+)
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
