class MP3Importer
    attr_accessor :path
  
    def initialize(file_path)
        @path = file_path
        @files = []
    end
  
    def files
        Dir.foreach(@path) {|filename| 
            if filename.end_with?(".mp3") && !@files.include?(filename)
            @files << filename
        end
    }
    @files
    end
  
    def import
        files.each do |file| file
            Song.new_by_filename(file)
        end
    end
  
end