# will parse all filenames in spec/fixtures & send filenames to song class
class MP3Importer
    attr_accessor :path
    #parses directory of files & sends gilenames to a song class
    #only gets mp3 files, from a directory
    def initialize(path)
        @path = path
    end

    def files
        Dir.entries(path).select{|song| !File.directory?(song) && song.end_with?(".mp3")}
    end

    def import
       files.each {|f| Song.new_by_filename(f)}
    end

end