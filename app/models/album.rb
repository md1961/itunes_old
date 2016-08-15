class Album
  attr_reader :name, :artist, :tracks

    def initialize(name, artist_name)
      @name = name
      @artist = Artist.find_by(name: artist_name)
    end
    private_class_method :new

  def self.all
    @all_instances ||= Track.pluck(:album, :artist).uniq.map { |name, artist_name| new(name, artist_name) }
  end

  def self.find_by(options)
    raise ArgumentError unless options.has_key?(:name)
    all.find { |album| album.name == options[:name] }
  end

  def self.where(options)
    raise ArgumentError unless options.has_key?(:artist)
    all.select { |album| album.artist == options[:artist] }
  end

  def tracks
    Track.where(album: name)
  end

  def ==(other)
    name == other.name
  end
end
