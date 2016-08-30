class Artist
  include ActiveModel::Conversion
  include ActiveModel::Naming
  include Comparable

  attr_reader :id, :name

    @@initial_id = 1

    def initialize(name)
      @id = @@initial_id
      @name = name

      @@initial_id += 1
    end
    private_class_method :new

  def self.all
    @all_instances ||= Track.pluck(:artist).uniq.map { |name| new(name) }
  end

  def self.find(id)
    all.find { |artist| artist.id == id.to_i }
  end

  def self.find_by(options)
    raise ArgumentError unless options.has_key?(:name)
    all.find { |artist| artist.name == options[:name] }
  end

  def albums
    @albums ||= Album.where(artist: self)
  end

  def to_s
    name
  end

  def ==(other)
    name == other.name
  end

  def name_when_compared
    name.sub(/\AThe /, '')
  end

  def <=>(other)
    name_when_compared <=> other.name_when_compared
  end

  def persisted?
    false
  end

  def to_param
    id.to_s
  end
end
