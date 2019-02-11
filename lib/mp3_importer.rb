class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
    @files = []
  end
  
  def files
    puts Dir[path]
  end
end