module Stocko
  module Core
    class Stock
      include DataMapper::Resource

      property :id,          Integer, :serial => true
      property :name,        String
      property :description, Text
    end
  end
end

DataMapper.auto_migrate!
