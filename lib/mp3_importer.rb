class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = Dir["#{path}/*.mp3"]
    files.each do |file_path|
      file_path.slice!("#{path}/")
    end
    files
  end
end