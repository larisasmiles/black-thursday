require 'minitest/autorun'
require 'minitest/pride'

class SalesEngineTest < Minitest::Test

  def test_if_it_exists
    se = SalesEngine.from_csv({
      :items       => "./data/items.csv",
      })
      
    assert_instance_of SalesEngine, se
    end
end
