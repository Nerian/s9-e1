require_relative 'dsl'

Processing::App::SKETCH_PATH = '.'

# This is the main interface. The API that most users are going to use.
class Wordcram < Processing::App 
  include Dsl
  attr_accessor :wordcram  
  
  size 650, 650
  
  def initialize( &block )
    @wordcram = Java.wordcram.WordCram.new(self)
    
    yield self if block_given?                
    @wordcram
  end
  
  def draw_all()  
    @wordcram.draw_all()    
  end                                  
end