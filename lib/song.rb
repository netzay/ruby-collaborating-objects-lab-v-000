class Song 
  attr_accessor :artist, :title, :name
  
  def initialize(name)
    @name = name 
  end

  def self.new_by_filename(filename)
    song = self.new(filename)
    song_name = filename.split(" - ")[1]
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end