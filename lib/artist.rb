require 'pry'

class Artist
  extend Memorable::ClassMethods, Findable::ClassMethods
  include Paramable::InstanceMethods, Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize #new artist, adds to @@all array and has an empty @song list
    super    
    @songs = []
  end

  def self.all #list of artists
    @@artists
  end

  def add_song(song) #adds a song to the artists song list and sets song up to belong to the artist
    @songs << song
    song.artist = self
  end

  def add_songs(songs) #adds multiple songs to the song list and sets up songs to belong to artist
    songs.each { |song| add_song(song) }
  end

  # def to_param #changes naming convention to lowercase, replaces space with -
  #   name.downcase.gsub(' ', '-')
  # end
end
