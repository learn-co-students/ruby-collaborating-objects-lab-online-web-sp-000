class MP3Importer

    attr_accessor :path, :files

    def initialize(path)
        @path = path
        @files = []
    end

    def files
        Dir.glob("#{@path}/*.mp3").each do |filename|
            @files << filename.delete_prefix("#{@path}/")
        end
        @files
    end

    def import
        files.each{|filename| Song.new_by_filename(filename)}
    end

end