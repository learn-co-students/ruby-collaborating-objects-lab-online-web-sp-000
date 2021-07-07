class MP3Importer

attr_accessor :path


def initialize(path)
@path = path
end

def files
    #binding.pry
    Dir.entries(path).select do |file|
     file.size > 2 
    end
end

def import
    files.each { |file| Song.new_by_filename(file) }
end
end
