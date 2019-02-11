class Song
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.new_by_filename(path)
    
  end
  
  def self.all
    @@all
  end
end