require_relative 'test_helper'
require_relative '../lib/item'

class ItemTest < Minitest::Test
    attr_reader :i

  def setup
      @i = Item.new({
      :id          => 0,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 100,
      :created_at  => Time.now,
      :updated_at  => Time.now,
      :merchant_id => 123456
      }, self)
  end


  def test_if_exists
    assert_instance_of Item, @i
  end

  def test_if_it_has_id
    assert_equal 0, @i.id
  end

  def test_if_it_returns_a_name
    assert_equal "Pencil", @i.name
  end

  def test_if_it_returns_description
    assert_equal  "You can use it to write things", @i.description
  end

  def test_if_it_returns_unit_price
    assert_equal 0.1e1, @i.unit_price
  end

  def test_if_it_returns_merchant_id
    assert_equal 123456, @i.merchant_id
  end

  def test_if_it_returns_created_at
    time = Time.now
    refute_equal time, @i.created_at
  end

  def test_if_it_returns_updated_at
    time = Time.now
    refute_equal time, @i.updated_at
  end



end
