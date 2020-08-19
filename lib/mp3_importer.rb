require 'pry'

class MP3Importer

  def initialize(inputPath)
    @path = inputPath
    @files = []
  end

  def path
    @path
  end

  def files
    cd = Dir.new(@path)
    allFiles = cd.entries
    allFiles.each do | selectedFile |
      if (selectedFile.include?(".mp3"))
        @files << selectedFile
      end
    end
  #  binding.pry
    return @files
  end

  def import
    self.files
    @files.each do | mp3 |
      Song.new_by_filename(mp3)
    end
  end

end
