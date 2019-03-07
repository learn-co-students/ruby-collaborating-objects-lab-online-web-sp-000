class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        files_array = []
        Dir.new(@path).each do |file|
          files_array << file if file.length > 4
        end
        files_array
    end

    def import
        self.files.each do |filename|
            Song.new_by_filename(filename)
        end
    end
end
