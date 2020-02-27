describe 'Song' do
  
  before(:example) {
    Song.class_variable_set(:@@all, [])
  }

  describe '#initialize with a name' do
    it 'accepts a name for the song and makes it accessible through an attribute accessor' do
      song = Song.new('Man in the Mirror')
      expect(song.name).to eq('Man in the Mirror')
    end
  end

  describe '#name=' do
    it 'sets the song name' do
      song = Song.new('Man in the Mirror')
      song.name = 'Thriller'
      expect(song.name).to eq('Thriller')
    end
  end

  describe '#artist=' do
    it 'sets the artist object to belong to the song' do
      song = Song.new('Man in the Mirror')
      new_artist_object = Artist.new('King of Pop')
      song.artist = new_artist_object
      expect(song.artist).to eq(new_artist_object)
    end
  end

  describe '.all' do
    it 'returns all existing Song instances' do
      song = Song.new('Man in the Mirror')
      expect(Song.all).to eq([song])
      purple_rain = Song.new('Purple Rain')
      expect(Song.all).to eq([song, purple_rain])
    end
  end

  describe '.new_by_filename' do
    it 'creates a new instance of a song from the file that\'s passed' do
      file_name = 'Michael Jackson - Black or White - pop.mp3'
      new_instance = Song.new_by_filename(file_name)
      expect(new_instance.name).to eq('Black or White')
    end

    
  end

  
end


