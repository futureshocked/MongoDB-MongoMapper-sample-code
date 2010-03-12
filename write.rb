require 'rubygems'
require 'active_record'
require "mongo_mapper"
require 'model'


author_name, author_info, quote = ARGV  

quote = Quote.create(
                            :author_info => author_info,
                          	:author_name => author_name,
                          	:quote => quote
                                  )
                                  puts "----> Storing on MongoDB."
quote.save