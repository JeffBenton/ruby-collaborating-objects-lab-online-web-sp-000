class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir["#{path}/*.mp3"].collect do |file_path|
      file_path.slice("#{path}/")
    end
  end
end