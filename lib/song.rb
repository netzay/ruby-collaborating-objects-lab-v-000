class Song 
  attr_accessor :artist, :title, :name, :artist_name, :file_name
  def initialize(name)
    @name = name 
    @file_name = file_name
  end
   
  # def self.new_by_filename(file_name)
  #   song = self.new(file_name)
  #   song_title = file_name.split("-")[1]
  #   song_title
  # end

  def self.new_by_filename(filename)
    song = self.new(filename)
    song.title = filename.split(" - ")[1]
    song.title.name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end