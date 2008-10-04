require File.dirname(__FILE__) + '/../../spec_helper'
require File.dirname(__FILE__) + '/../../../lib/stocko/core/models'

module Stocko
  module Core
    describe "models" do
      
      it "Stock should have id, name, description" do
        stock = Stock.new(:name => :a_name, :description => :a_description)
        stock.save
        Stock.first(:name => :a_name).should do |s|
          s.id.should_not be_blank
          s.name.should eql('a_name')
          s.description.should eql('a_description')
        end
      end
    end
  end
end