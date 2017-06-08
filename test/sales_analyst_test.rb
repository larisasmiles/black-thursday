require_relative 'test_helper'
require_relative'../lib/sales_analyst'
require "pry"

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
    se_1 = SalesEngine.from_csv({
    :items     => "./test/fixtures/items_sd_fixture.csv",
    :merchants => "./test/fixtures/merchants_sd_fixture.csv"
    })
    sa_1 = SalesAnalyst.new(se_1)
    result = sa_1.average_items_per_merchant_standard_deviation

    assert_equal 1, result
  end

  def test_merchants_with_high_item_count
    se_1 = SalesEngine.from_csv({
    :items     => "./test/fixtures/items_sd_fixture.csv",
    :merchants => "./test/fixtures/merchants_sd_fixture.csv"
    })
    sa_1 = SalesAnalyst.new(se_1)

    assert_instance_of Array, sa_1.merchants_with_high_item_count
  end

  def test_for_sum_of_item_price
    se_1 = SalesEngine.from_csv({
    :items     => "./test/fixtures/items_sd_fixture.csv",
    :merchants => "./test/fixtures/merchants_sd_fixture.csv"
    })
    sa_1 = SalesAnalyst.new(se_1)
    merchant = 12334105
    assert_equal 1, sa_1.sum_of_item_prices(merchant)
  end

  # def average_item_price_for_merchant
  #   se_1 = SalesEngine.from_csv({
  #   :items     => "./test/fixtures/items_sd_fixture.csv",
  #   :merchants => "./test/fixtures/merchants_sd_fixture.csv"
  #   })
  #   sa_1 = SalesAnalyst.new(se_1)
  #
  #   merchant = sa_1.se.all.merchants.find_by_id(12334105)
  #   assert_equal 1, sa_1.sum_of_item_prices(merchant)
  # end

  def average_item_price_for_merchant
    se_1 = SalesEngine.from_csv({
    :items     => "./test/fixtures/items_sd_fixture.csv",
    :merchants => "./test/fixtures/merchants_sd_fixture.csv"
    })
    sa_1 = SalesAnalyst.new(se_1)

    merchant = sa_1.se.all.merchants.find_by_id(12334105)
    assert_equal 1, sa_1.sum_of_item_prices(merchant)
  end




end






  #   result = sa.average_item_price_for_merchant
  # end
