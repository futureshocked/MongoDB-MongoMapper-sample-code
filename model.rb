require 'rubygems'
require 'active_record'
require "mongo_mapper"


MongoMapper.connection = Mongo::Connection.new('x.x.x.x', 27017)
MongoMapper.database = 'x'
MongoMapper.database.authenticate('x', 'x')


class Quote 
  include MongoMapper::Document
  set_collection_name "quotes"
  
  key :author_info, String
  key :author_name, String
  key :quote, String
  timestamps!
end