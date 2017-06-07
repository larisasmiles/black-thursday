require 'bigdecimal'
require 'bigdecimal/util'
require 'time'
class Item
  attr_reader :id, :name, :description, :unit_price, :merchant_id, :created_at, :updated_at, :repo

  def initialize(data, repo)
    @id            = data[:id].to_i
    @name          = data[:name]
    @description   = data[:description]
    @unit_price    = (to_big_decimal(data[:unit_price].to_f) / 100) unless data[:unit_price] == nil
    @created_at    = Time.parse(data[:created_at].to_s)
    @updated_at    = Time.parse(data[:updated_at].to_s)
    @merchant_id   = data[:merchant_id].to_i
    @repo          = repo
  end

  def unit_price_to_dollars
    @unit_price.to_f.round(2)
  end

  def to_big_decimal(price)
    BigDecimal.new(price, price.to_s.length)
  end

  def merchant
    @repo.se.merchants.find_by_id(@merchant_id)
  end

end
