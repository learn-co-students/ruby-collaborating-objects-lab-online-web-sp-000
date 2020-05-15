class MP3Importer
attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    entry = []
    Dir.entries("./spec/fixtures/mp3s").select do |e|
       if e.include?("mp3")
         e = e.split(".mp3")
  end

    end
  end

  def import
    i = 0
    while i < self.files.length
    Song.new_by_filename(files)
    i += 1
  end
  end
end
