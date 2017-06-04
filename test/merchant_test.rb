require_relative 'test_helper'
require_relative '../lib/merchant'
require_relative '../lib/sales_engine'

class MerchantTest < Minitest::Test

  def test_if_it_exists
    m = Merchant.new({:id => 5, :name => "Turing School"}, "repo_place_holder")

    assert Merchant, m
  end

  def test_it_returns_an_integer
    m = Merchant.new({:id => 5, :name => "Turing School"}, "repo_place_holder")

    assert_equal 5, m.id
  end

  def test_if_returns_name
    m = Merchant.new({:id => 5, :name => "Turing School"}, "repo_place_holder")

    assert_equal "Turing School", m.name
  end

  def test_items_returns_list_of_items
    se = SalesEngine.from_csv({
    :items     => "./test/fixtures/items_fixture.csv",
    :merchants => "./data/merchants.csv"
    })
    merchant = se.merchants.find_by_id(12334113)
    assert_instance_of Array, merchant.items
    assert_instance_of Item, merchant.items[0]
  end
end
