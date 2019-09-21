class MP3Importer
  attr_accessor :path

  @@all = []
  def initialize(path)
    @path = path
  end

  def files

    Dir[File.join(@path, '**', '*')].each {|file|

      @@all << file.split("mp3s/")[1]
    }
    @@all

  end

  def size
    files.count { |file| File.file?(file) }
  end

  def import
    files.each{ |filename|
      Song.new_by_filename(filename)
    }
  end

end
