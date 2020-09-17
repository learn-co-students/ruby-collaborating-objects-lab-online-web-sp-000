require "pry"
class MP3Importer 

    def initialize(path)
        @path = path
        #Initalizes a session of MP3 Importer with a path to import from
        #Sets Instance Variable @path as, well, yeah.
    end 

    def path
        @path
        #Calls the path from initialization
    end 

    def files
        files = Dir.glob("*.mp3", base: path)
        #Dir.glob retrieves all files from a given path that match the criteria in quotes.
    end 

    def import 
        files 
        #Runs the "files" method to grab all the files from the path given at initialization.
        files.each {|file| song.new_by_filename(file)}
        #Applies the Song method new_by_filename to each file and instances them as Songs.
    end 
end 