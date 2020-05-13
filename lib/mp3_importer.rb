class MP3Importer
    attr_accessor :files, :path, :song

    def initialize(path)
        @path = path
        @files = []
    end

    def files
        dir_files = Dir.children(@path)
        dir_files.each do |file|
            @files.push(file)
        end
        @files
    end

    def import
        @files.each do |file|
            Song.new_by_filename(file)
        end    
    end
end



