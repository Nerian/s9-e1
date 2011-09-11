$LOAD_PATH.unshift(File.dirname(__FILE__))       

require '../lib/wordcram'   
                           
Processing::App::SKETCH_PATH = '.'
class Sketch < Processing::App
  
  def setup    
    size 350, 350
    
    wordcram = Wordcram.new(self) do |options|
      options.from(:text_string =>"This is a wicked wordcram test, some words should be doubled doubled be be")
    end                                                                                                        
    wordcram.draw_all()    
  end
  
  def draw
    
  end
  
end     

Sketch.new