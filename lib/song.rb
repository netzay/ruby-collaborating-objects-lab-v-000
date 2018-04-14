class Song 
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name 
  end

  def self.new_by_filename(filename)
    song_title = filename.split(" - ")[1]
    song = self.new(song_title)
    song.artist_name=(filename.split(" - ")[0])
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    #Artist.add_song(self.song)
  end
end