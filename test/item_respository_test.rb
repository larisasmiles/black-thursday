require_relative 'test_helper'
require './lib/item_repository'
require 'pry'
class ItemRepositoryTest < Minitest::Test

  def test_if_it_exists
    ir = ItemRepository.new('./test/fixtures/items_fixture.csv')

    assert_instance_of ItemRepository, ir
  end

  def test_if_it_finds_item_by_id
    ir = ItemRepository.new('./test/fixtures/items_fixture.csv')

    item = ir.find_by_id(263395237)

    assert_equal 263395237, item.id
  end

  def test_if_it_finds_by_name
    ir = ItemRepository.new('./test/fixtures/items_fixture.csv')
    item = ir.find_by_name("510+ RealPush Icon Set")

    assert_equal "510+ RealPush Icon Set", item.name
  end

  def test_if_it_finds_all_with_decription
    ir = ItemRepository.new('./test/fixtures/items_fixture.csv')

    assert_equal [], ir.find_all_with_decription("You&#39;ve got a total socialmedia iconset! Almost every social icon on the planet earth. zynga")

  end

  def test_if_finds_all_by_price
    ir = ItemRepository.new('./test/fixtures/items_fixture.csv')

    result = ir.find_all_by_price(12.00)
    assert_instance_of Array, result
    assert_equal "510+ RealPush Icon Set", result.first.name

  end

  # def test_if_can_find_a_price_range
  #   ir = ItemRepository.new('./test/fixtures/items_fixture.csv')
  #
  #   result = ir.find_all_by_price_in_range(13..13.50).count
  #   assert_equal
  # end

  def test_if_it_finds_

end
