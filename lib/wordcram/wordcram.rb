$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dsl'

#class Wordcram  
#  include Dsl
#  attr_accessor :wordcram
#  
#  def initialize(papplet) 
#    @wordcram = Java.wordcram.WordCram.new(papplet)
#    yield self if block_given?               
#  end
#  
#  def draw_all()  
#    @wordcram.draw_all()    
#  end
                                                    
#end    




class Wordcram < Processing::App
  include Dsl
  
  def self.design() 
    #size 350, 350              
    @@wordcram = Java.wordcram.WordCram.new(self)
  end
end                

