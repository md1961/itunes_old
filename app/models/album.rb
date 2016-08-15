class Album
  include ActiveModel::Conversion
  include ActiveModel::Naming

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

  def self.find(id)
    all.find { |album| album.id == id.to_i }
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
