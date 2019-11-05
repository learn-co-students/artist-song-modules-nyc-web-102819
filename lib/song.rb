require 'pry'

class Song
  extend Memorable::ClassMethods, Findable::ClassMethods
  include Paramable::InstanceMethods, Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize #new song and adds to @@songs array
  #   self.class.all << self
  # end

  def self.all #lists all songs
    @@songs
  end

  def artist=(artist) #sets an artist variable for a song
    @artist = artist
  end

  # def to_param #sets up naming format for song - lowercase with "-" instead of spaces
  #   name.downcase.gsub(' ', '-')
  # end
end
