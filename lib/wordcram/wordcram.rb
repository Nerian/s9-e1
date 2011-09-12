$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dsl'

class Wordcram < Processing::App 
  include Dsl
  attr_accessor :wordcram
  
  def initialize() 
    @wordcram = Java.wordcram.WordCram.new(self)
    yield self if block_given?               
  end
  
  def draw_all()  
    @wordcram.draw_all()    
  end
                                                    
end             

