require_relative '../lib/sales_engine'
require 'pry'

class SalesAnalyst
  attr_reader :se

  def initialize(se)
    @se = se
  end

  def average_items_per_merchant
    (se.items.all.count.to_f / se.merchants.all.count.to_f).round(2)
  end

  def merchant_items_by_count

   array = []
   se.merchants.all.each {|merchant| array << merchant.items.count}
   array
  end

  def average_items_per_merchant_standard_deviation
   ipm_standard_deviation
  end

  def ipm_standard_deviation
   total = 0
   difference_squared = merchant_items_by_count.map {|num| (num.to_f - average_items_per_merchant.to_f) ** 2}
   sum_of_squares = difference_squared.reduce(:+)
   Math.sqrt(sum_of_squares.to_f / (se.merchants.all.count - 1)).round(2)
  end


  def merchants_with_high_item_count
    above_average = average_items_per_merchant + average_items_per_merchant_standard_deviation
    se.merchants.all.find_all do |merchant|
      merchant.items.count > above_average
    end
  end

  def sum_of_item_prices(merchant)
    binding.pry
    se.merchants.all.map



  end
  def average_item_price_for_merchant(id)
    merchant = se.merchants.all.find_by_id(id)
    sum = sum_of_item_prices(merchant)
    number_of_items= merchant.items.count
    average(sum, number_of_items)
  end

  def golden_items
    #=> [<item>, <item>, <item>, <item>]
  end

end
