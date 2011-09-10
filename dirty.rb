require 'java'
require 'vendor/WordCram.jar'
require 'vendor/jsoup-1.3.3.jar' 
require 'vendor/processing/core.jar'
require 'vendor/processing/itext.jar'
require 'vendor/processing/pdf.jar'

wordcram = Java.wordcram.WordCram.new(self)
