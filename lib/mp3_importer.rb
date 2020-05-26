require "pry"

class MP3Importer
    attr_accessor :path

    def initialize(test_music_path)
        @path = test_music_path
    end

    def import
        files.each {|file| Song.new_by_filename(file)}
    end

    def files
        Dir[self.path + "/*"].collect {|filename| filename[(self.path.length + 1)...]}
    end

end