class MP3Importer
  attr_reader :path

def initialize(path)
  @path = path
end

def files
  Dir.chdir(@path) do |path|
    Dir.glob("*.mp3")
  end
end

def import
  files.each do |filename|
  song = Song.new_by_filename(filename)
  end
end

end
