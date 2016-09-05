class Artist
  include ActiveModel::Conversion
  include ActiveModel::Naming
  include Comparable
  extend ActiveRecordLikeFinders

  attr_reader :id, :name

    @@initial_id = 1

    def initialize(name)
      @id = @@initial_id
      @name = name

      @@initial_id += 1
    end
    private_class_method :new

  COMPILATION = new('(compilation)')

  def self.all
    @all_instances ||= [COMPILATION] + Track.where(compilation: false).pluck(:artist).uniq.map { |name| new(name) }
  end

  def albums
    @albums ||= self == COMPILATION ? Album.where(compilation?: true) : Album.where(artist: self)
  end

  def self.filter(condition)
    return all if condition.blank?
    artist_condition = condition.split.map { |x| x =~ /\A[a-z_]/ ? "artist.#{x}" : x }.join(' ')
    all.select { |artist| eval(artist_condition) }
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
