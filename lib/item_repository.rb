require 'csv'
require './lib/item'


class ItemRepository
    attr_reader :all, :se

    def initialize(path, se)
      @all = from_csv(path)
      @se  = se
    end

    def from_csv(path)
      results = CSV.open(path, headers:true, header_converters: :symbol)
      results.map do |row|
        Item.new(row, self)
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

    def find_all_with_decription(description)
      @all.select do |description|
        description.description == description
      end
    end

    def find_all_by_price(unit_price)
      @all.select do |item|
        item.unit_price_to_dollars == unit_price
      end
    end

    def find_all_by_price_in_range(range)
      @all.find_all do |item|
        (range).include?(item.unit_price)
      end
    end


    def find_all_by_merchant_id(id)
      @all.find_all do |item|
        item.merchant_id
      end
    end

end
