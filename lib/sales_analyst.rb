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

  def average_item_price_for_merchant(id)
    items = se.collected_items(id)
    sum = 0
    items.each do |item|
      sum += item.unit_price
    end
    var = sum/(items.length)
    var.round(2)
  end

  def average_average_price_per_merchant
    all_merch_ave = []
    se.merchants.all.each do |merchant|
      all_merch_ave << average_item_price_for_merchant(merchant.id)
    end
    total_averages = (all_merch_ave.reduce(:+)/all_merch_ave.length)
    total_averages.round(2)
  end

  # def average_item_price
  #   all_average = se.items.all.map |unit_price|
  #   all_average.reduce(:+) / all_average.count
  # end

  def standard_deviation(values)
     average = values.reduce(:+)/values.length.to_f
     average_average = values.reduce(0) {|val, num| val += ((num - average)**2) }
     Math.sqrt(average_average / (values.length-1)).round(2)
   end

  def golden_items
    ir = se.items.all
    prices = ir.map {|item| item.unit_price}
    dev = (average_average_price_per_merchant)+(standard_deviation(prices) *2)
    ir.find_all do |item|
      item.unit_price >= dev
    end
  end

end
