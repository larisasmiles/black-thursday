require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'
require "pry"

class SalesEngineTest < Minitest::Test

  def test_it_exists
    # binding.pry
    se = SalesEngine.new("./data/items.csv")
    se.load_csv("./data/items.csv")

    assert_instance_of SalesEngine, se
  end
end
