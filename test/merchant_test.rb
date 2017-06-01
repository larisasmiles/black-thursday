require_relative 'test_helper'
require './lib/merchant'

class MerchantTest < Minitest::Test

  def test_if_it_exists
    m = Merchant.new({:id => 5, :name => "Turing School"})

    assert Merchant, m
  end

  def test_it_returns_an_integer
    m = Merchant.new({:id => 5, :name => "Turing School"})

    assert_equal 5, m.id
  end

  def test_if_returns_name
    m = Merchant.new({:id => 5, :name => "Turing School"})

    assert_equal "Turing School", m.name
  end
end
