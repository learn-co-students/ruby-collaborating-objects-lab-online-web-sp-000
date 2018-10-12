class Song

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(some_filename)
        n = Song.new(some_filename.split(/\ \-\ /)[1])
        n
    end
end
