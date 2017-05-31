
require "pry"
class Item
  attr_reader :id, :name, :description, :unit_price, :merchant_id, :created_at, :updated_at

  def initialize(data)
    @id            = data[:id].to_i
    @name          = data[:name]
    @description   = data[:description]
    @unit_price    = data[:unit_price]
    @created_at    = data[:created_at]
    @merchant_id   = data[:merchant_id]
  end

  def unit_price_to_dollars
    @unit_price.to_f
  end

#   We create an instance like this:
#
# i = Item.new({
#   :name        => "Pencil",
#   :description => "You can use it to write things",
#   :unit_price  => BigDecimal.new(10.99,4),
#   :created_at  => Time.now,
#   :updated_at  => Time.now,
# })

end
