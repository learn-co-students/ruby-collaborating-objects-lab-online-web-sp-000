class MP3Importer
  attr_accessor :path

  @files

  def initialize(music_path)
    @path = music_path
    @files = []
    parse_to_files
    import
  end

  def parse_to_files
    dir = Dir.new(path)
    puts "PARSE to FILES"
    dir.each {|file|
      puts file
      if(file != "." && file != "..")
        files << file
      end
    }
  end

  def files
    @files
  end

  def import
    files.each {|file| song = Song.new_by_filename(file)}
  end
end
