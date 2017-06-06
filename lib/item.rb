require 'bigdecimal'
require 'bigdecimal/util'
require 'Time'

class Item
  attr_reader :id, :name, :description, :unit_price, :merchant_id, :created_at, :updated_at, :repo

  def initialize(data, repo)
    @id            = data[:id].to_i
    @name          = data[:name]
    @description   = data[:description]
    @unit_price    = BigDecimal.new(data[:unit_price], 4)
    @created_at    = data[:created_at]
    @merchant_id   = data[:merchant_id]
    @repo          = repo
  end

  def unit_price_to_dollars
    @unit_price.to_f / 100
  end

end
