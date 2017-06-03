require_relative 'test_helper'
require './lib/sales_analyst'

class SalesAnalystTest < Minitest::Test

  def test_if_it_exists
    sa = SalesAnalyst.new

    assert_instance_of SalesAnalyst, sa
  end

  def test_average_items_per_merchant
    sa = SalesAnalyst.new
    result = sa.average_items_per_merchant

    assert_equal 2.88, result
  end

  def test_
end
