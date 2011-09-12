$LOAD_PATH.unshift(File.dirname(__FILE__))       

require '../lib/wordcram'   
                           
Processing::App::SKETCH_PATH = '.'
    
wordcram = Wordcram.new do |options|
  options.from(:text_string =>"This is a wicked wordcram test, some words should be doubled doubled be be")
end                                                                                                        

wordcram.draw_all()