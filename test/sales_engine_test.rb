require_relative 'test_helper'
require './lib/sales_engine'
require "pry"

class SalesEngineTest < Minitest::Test

  def test_it_exists
    # binding.pry
    se = SalesEngine.new("./data/items.csv", self)
    se.load_csv("./data/items.csv")

    assert_instance_of SalesEngine, se
  end
end
