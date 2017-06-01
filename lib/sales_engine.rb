require 'csv'
require './lib/item'
require "pry"
class SalesEngine
  attr_reader :merchants

  def initialize(data)
    @merchants = MerchantRepository.new(data[:merchants])


    # called an instance method
  #   @items  => "./data/items.csv"
  #   @merchants => "./data/merchants.csv"
  # @items = 2   (need attr_reader)
  # @merchants = merchant_repo
  end

  def self.from_csv(csvs) #called a Class Method
    # create an instance of Sales Engine
     self.new(csvs)
    #  * initialize(csvs)
    # pass instance csv file paths
    # its goes and does something
    # return that instance of Sales Engine
  end

  def load_csv(path)
    results = CSV.open(path, headers:true, header_converters: :symbol)
    results.each do |row|
      Item.new(row)
      p "just created #{row}[:id]"
    end
  end
end
