class Artist 
  attr_accessor :name, :songs, :song_name
  @@all = [] 
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << save
  end  
  
  def self.all
    @@all
  end

  def add_song(song_name)
    song = Song.new(song_name)
    @songs << song.name
  end
 
  def save
    @@all << self
  end
 
  def self.create_by_name(name)
    artist = self.new
    artist.name = name
    artist
  end

  def self.find_by_name(name)
    @@all.detect do |artist|
      artist.name == name
    end
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name) 
      return find_by_name(name)
    else
      create_by_name(name)
    end
  end
 
  def print_songs
    @songs.each{|song| puts song.name}
  end
end 