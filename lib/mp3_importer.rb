class MP3Importer
    attr_accessor :path
    def initialize(path)
        @path = path
    end

    def files
       @files = Dir.entries(@path).reject{|file| File.directory?(file) || file[0].include?('.')} 
    end

    def import
        files.each{|file| Song.new_by_filename(file)}
    end
end