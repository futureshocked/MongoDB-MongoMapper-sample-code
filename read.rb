require 'rubygems'
require 'active_record'
require "mongo_mapper"
require 'model'



time_start = Time.now
quotes_copied = 0
Quote.find_each do |quote|
  puts "Quote: #{quote.quote}"
  puts "Author: #{quote.author_name}"
  puts "Bio: #{quote.author_info}"
  puts "_________________________"
  
  quotes_copied += 1
end

puts "Done complete copying. Total copy time: #{(Time.now - time_start)} SECONDS."
puts "Total #{quotes_copied} quotes copied."