require_relative 'test_helper'
require './lib/sales_engine'
require "pry"

class SalesEngineTest < Minitest::Test

  def test_it_exists
    se = SalesEngine.from_csv({:items => "./data/items.csv", :merchants => "./data/merchants.csv", :invoices => "./data/invoices.csv"})

    assert_instance_of SalesEngine, se
  end
end
