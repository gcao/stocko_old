require 'dm-validations'

module Stocko
  module Core
    class Stock
      include DataMapper::Resource

      property :id,          Integer, :serial => true
      property :name,        String, :nullable => false, :unique => true
      property :description, Text
      
      has n,                 :prices, :class_name => 'StockPrice'
      
      validates_length       :name, :min => 1
    end
    
    class StockPrice
      include DataMapper::Resource

      property :id,          Integer, :serial => true
      property :date,        Date
      property :open,        Integer
      property :close,       Integer
      property :high,        Integer
      property :low,         Integer
      
      belongs_to             :stock
    end
  end
end

DataMapper.auto_migrate!
