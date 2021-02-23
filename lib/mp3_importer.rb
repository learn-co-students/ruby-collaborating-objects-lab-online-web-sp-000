require_relative './song.rb'
require_relative './artist.rb'
require 'pry'

class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        # Dir.entries(path).glob('*.mp3')
        all_file_names = Dir.entries(path)
        all_file_names.grep(/.mp3/)
    end

    def import

    end

end