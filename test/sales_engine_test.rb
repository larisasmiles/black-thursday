require 'minitest/autorun'
require 'minitest/pride'
require './lib/sales_engine'

class SalesEngineTest < Minitest::Test

  def test_it_exists
    se = SalesEngine.new
    assert_instance_of SalesEngine, se
  
    end
end
