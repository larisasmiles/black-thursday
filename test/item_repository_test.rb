require_relative 'test_helper'
require_relative '../lib/item_repository'
require 'pry'
require 'Date'

class ItemRepositoryTest < Minitest::Test

  def test_if_it_exists
    ir = ItemRepository.new('./test/fixtures/items_fixture.csv', self)

    assert_instance_of ItemRepository, ir
  end

    def test_if_it_finds_item_by_id
      ir = ItemRepository.new('./test/fixtures/items_fixture.csv', self)

      item = ir.find_by_id(263395237)

      assert_equal 263395237, item.id
    end

    def test_if_it_finds_by_name
      ir = ItemRepository.new('./test/fixtures/items_fixture.csv', self)
      item = ir.find_by_name("510+ RealPush Icon Set")

      assert_equal "510+ RealPush Icon Set", item.name
    end

    def test_if_it_finds_all_with_description
      ir = ItemRepository.new('./test/fixtures/items_fixture.csv', self)

      assert_equal ir.find_all_with_description("Disney").length, 1
    end

    def test_all_returns_array
      ir = ItemRepository.new('./test/fixtures/items_fixture.csv', self)

      assert_instance_of Array, ir.all
    end

    def test_find_all_with_description_with_nil
      ir = ItemRepository.new('./test/fixtures/items_fixture.csv', self)
      assert_equal ir.find_all_with_description("iliketolaughalot"), []
    end

    def test_if_finds_all_by_price
      ir = ItemRepository.new('./test/fixtures/items_fixture.csv', self)
      item = ir.find_all_by_price(12.00)

      assert_instance_of Array, item
    end

    def test_if_can_find_a_price_range
      ir = ItemRepository.new('./test/fixtures/items_fixture.csv', self)

      item = ir.find_all_by_price_in_range(13..13.50)
      assert_instance_of Array, item
    end

    def test_find_all_by_merchant_id
      ir = ItemRepository.new('./test/fixtures/items_fixture.csv', self)
      item = ir.find_all_by_merchant_id(12334185).length, 1
    end

end
