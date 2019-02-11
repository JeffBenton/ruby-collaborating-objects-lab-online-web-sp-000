class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song
  end
  
  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      return artist if artist.name = name
    end
    Artist.new(name)
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def print_songs
    @songs.each { |song| puts song.name }
  end
end
