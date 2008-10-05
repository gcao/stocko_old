require File.dirname(__FILE__) + '/../../spec_helper'
require File.dirname(__FILE__) + '/../../../lib/stocko/core/models'

module Stocko
  module Core
    describe Stock do
      
      it "Stock should have id, name, description" do
        stock = Stock.new(:name => :a_name, :description => :a_description)
        stock.save
        Stock.first(:name => :a_name).should do |s|
          s.id.should_not be_blank
          s.name.should eql('a_name')
          s.description.should eql('a_description')
        end
      end
      
      it "Stock name is required" do
        pending "validation got problem"
        stock = Stock.new(:name => '', :description => :a_description)
        stock.save.should be_nil
        stock.errors.on('name').should_not be_nil
      end
      
      it "Stock name is unique" do
        pending "validation got problem"
        Stock.new(:name => :a_name).save
        stock = Stock.new(:name => :a_name)
        stock.save.should be_nil
        stock.errors.on('name').should_not be_nil
      end
      
      it "A stock can have n stock prices" do
        stock = Stock.new(:name => :a_name)
        stock.save
        stock.prices.create(:date => '1/1/2008', :open => 2)
        stock.prices.create(:date => '1/2/2008', :open => 3)
        Stock.first(:name => :a_name).should do |s|
          s.prices[0].date.should eql('1/1/2008')
          s.prices[0].open.should eql(2)
          s.prices[1].date.should eql('1/2/2008')
          s.prices[1].open.should eql(3)
        end
      end
    end
    
    describe StockPrice do
      
      it "StockPrice should have id, date, open, close, high, low" do
        stock_price = StockPrice.new(:date => '1/1/2008', :open => 2, :close => 3, :high => 4, :low => 1)
        stock_price.save
        StockPrice.get(stock_price.id).should do |p|
          p.id.should_not be_blank
          s.date.to_s.should eql('1/1/2008')
          s.open.should eql(2)
          s.close.should eql(3)
          s.high.should eql(4)
          s.low.should eql(1)
        end
      end
      
    end
  end
end