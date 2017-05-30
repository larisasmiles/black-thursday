require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant'

class MerchantTest < Minitest::Test

  def test_if_it_exists
    m = Merchant.new

    assert Merchant, m
  end
end
