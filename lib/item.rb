class Item

  def initialize
    @id            = id #id returns the integer id of the item
    @name          = name #returns the name of the item
    @unit_price    = unit_price #returns the price of the item formatted as a BigDecimal
    @created_at    = created_at #returns a Time instance for the date the item was first created
    @updated_at    = updated_at #returns a Time instance for the date the item was last modified
    @merchant_id   = merchant_id #returns the integer merchant id of the item
  end

  def unit_price_to_dollars
#returns the price of the item in dollars formatted as a Float
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
