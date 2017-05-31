require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require 'pry'

class ItemTest < Minitest::Test
  def setup
      @i = Item.new({
      :id          => 0,
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => 0, #BigDecimal.new(10.99,4),
      :created_at  => Time.now,
      :updated_at  => Time.now,
      :merchant_id => 123456
      })
  end


  def test_if_exists
    @i = Item.new(({
    :id          => 0,
    :name        => "Pencil",
    :description => "You can use it to write things",
    :created_at  => Time.now,
    :updated_at  => Time.now,
    }))

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
  end

  def test_if_it_returns_merchant_id
  end

  def test_if_it_returns_created_at
  end
end
