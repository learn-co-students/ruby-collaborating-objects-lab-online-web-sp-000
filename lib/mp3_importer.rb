class MP3Importer
attr_reader :path

    def initialize(path)
        @path=path
    end

    def files
        @files ||= Dir.glob("#{path}/*.mp3").collect{ |x| x.gsub("#{path}/", "")}
    end

    def import
        files.each{ |y| Song.new_by_filename(y) }
    end
end