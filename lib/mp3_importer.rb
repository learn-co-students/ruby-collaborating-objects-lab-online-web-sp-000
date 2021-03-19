class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        @files = Dir.entries(@path)
        @files.delete_if {|file| file == "." || file == ".."}
    end

    def import
        self.files.each do |filename|
            Song.new_by_filename(filename)
        end
    end
end