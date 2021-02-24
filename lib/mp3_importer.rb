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
        all_file_names = Dir.entries(path).grep(/.mp3/)
    end

    def import
        files.each do |filename|
            Song.new_by_filename(filename)
        end

    end

end