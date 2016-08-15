class Artist
  attr_reader :name

    def initialize(name)
      @name = name
    end
    private_class_method :new

  def self.all
    @all_instances ||= Track.pluck(:artist).uniq.map { |name| new(name) }
  end

  def self.find_by(options)
    raise ArgumentError unless options.has_key?(:name)
    all.find { |x| x.name == options[:name] }
  end

  def albums
    @albums ||= Album.where(artist: self)
  end

  def ==(other)
    name == other.name
  end
end
