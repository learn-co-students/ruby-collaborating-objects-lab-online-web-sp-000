class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        Dir[@path+"/*.mp3"].collect {|f| f.split("/").last}
    end

    def import
        files.each {|f| Song.new_by_filename(f)}
    end

end