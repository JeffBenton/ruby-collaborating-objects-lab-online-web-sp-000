class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.new_by_filename(path)
    data = path.split(" - ")
    song = Song.new(data[1])
    song.artist = data[0]
    song.genre = data[2].chomp(".mp3")
  end
  
  def self.all
    @@all
  end
end