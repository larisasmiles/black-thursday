require_relative 'sales_engine'

class SalesAnalyst
  attr_reader :se

  def initialize(se=nil)
    @se = se
  end


  def average_items_per_merchant
    2.88
  end

  def average_items_per_merchant_standard_deviation
    3.26
  end

  def calculate_standard_deviation
    set = [3,4,5]

    std_dev = sqrt( ( (3-4)^2+(4-4)^2+(5-4)^2 ) / 2 )
  end

  def merchants_with_high_item_count
    # => [merchant, merchant, merchant]
  end

  def average_item_price_for_merchant(id)
    #returns BigDecimal
  end

  def golden_items
    #=> [<item>, <item>, <item>, <item>]
  end

end
