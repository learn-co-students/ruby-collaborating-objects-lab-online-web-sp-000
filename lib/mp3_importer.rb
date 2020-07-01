
class MP3Importer
    attr_reader :path, :files
  
    def initialize(path)
      @path = path
    end
  
    def files
      @files = Dir.entries(@path).grep(/.*\.mp3/)
    end
  
    def import
      files.each do|file| 
        Song.new_by_filename(file)
      end
    end
end