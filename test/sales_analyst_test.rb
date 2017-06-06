require_relative 'test_helper'
require_relative'../lib/sales_analyst'

class SalesAnalystTest < Minitest::Test
  attr_reader :se, :sa

  def setup
    @se = SalesEngine.from_csv({
    :items     => "./test/fixtures/items_fixture.csv",
    :merchants => "./data/merchants.csv"
    })
    @sa = SalesAnalyst.new(se)
  end

  def test_if_it_exists
    assert_instance_of SalesAnalyst, sa
  end

  def test_average_items_per_merchant
    result = sa.average_items_per_merchant

    assert_equal 0.01, result
  end

  def test_average_items_per_merchant_standard_deviation
    result = sa.average_items_per_merchant_standard_deviation

    assert_equal 2.99, result
  end

  def test_merchants_with_high_item_count
    result = sa.merchants_with_high_item_count
    
  end

  def test_the_average_item_price
    result = sa.average_item_price_for_merchant
  end



end
