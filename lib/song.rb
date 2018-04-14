class Song 
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name 
  end

  def self.new_by_filename(filename)
    song = self.new 
    song.name = filename.split(" - ")[1]
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    Artist.add_song(self.song)
  end
end