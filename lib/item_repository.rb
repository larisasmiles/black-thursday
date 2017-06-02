require 'csv'
require './lib/item'

class ItemRepository
    attr_reader :all

    def initialize(path)
      @all = load_csv(path)
    end

    def load_csv(path)
      results = CSV.open(path, headers:true, header_converters: :symbol)
      results.map do |row|
        Item.new(row)
      end
    end

    def find_by_id(id)
      @all.select do |item|
        item.id == id
      end.first
    end

    def find_by_name(item)
      @all.find do |name|
        name.name == item
      end
    end

    def find_all_with_decription
      # returns either [] or instances of Item where the supplied string appears in the item description (case insensitive)
    end

    def find_all_by_price
      # returns either [] or instances of Item where the supplied price exactly matches
    end

    def find_all_by_price_in_range
      #  returns either [] or instances of Item where the supplied price is in the supplied range (a single Ruby range instance is passed in)
    end

    def find_all_by_merchant_id
      # returns either [] or instances of Item where the supplied merchant ID matches that supplied
    end

end
