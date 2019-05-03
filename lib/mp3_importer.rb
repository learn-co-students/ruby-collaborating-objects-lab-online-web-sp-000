class MP3Importer
  attr_accessor :path, :filenames
  def initialize (path)
    @path = path
  end
  def files
    mp3files = File.join("**", "*.mp3")
    path = Dir.glob(mp3files)
    @filenames = []
    path.each do |path_name|
      path_array = path_name.split('/')
      @filenames << path_array[-1]
    end
    @filenames
  end
  def import
    @filenames.each do |file|
      Song.new_by_filename(file)
    end
  end
end
