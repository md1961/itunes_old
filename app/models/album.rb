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
    find_first_or_all(:first, options)
  end

  def self.where(options)
    find_first_or_all(:all, options)
  end

    def self.find_first_or_all(first_or_all, options)
      raise ArgumentError if (options.symbolize_keys.keys - [:name, :artist]).size > 0
      all.send(first_or_all == :first ? :find : :select) { |album|
        options.symbolize_keys.all? { |name, value|
          album.send(name) == value
        }
      }
    end
    private_class_method :find_first_or_all

  def tracks
    Track.where(album: name).order(:track_number)
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
