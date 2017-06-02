require_relative 'test_helper'
require './lib/item_repository'

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
    # skip
    ir = ItemRepository.new('./test/fixtures/items_fixture.csv')
    item = ir.find_by_name("510+ RealPush Icon Set")

    assert_equal "510+ RealPush Icon Set", item.name
  end

  def test_if_it_finds_all_by_name
    # skip
    mr = MerchantRepository.new('./test/fixtures/items_fixture.csv')

    assert_instance_of Array, mr.find_all_by_name("shopin1901")
  end

end
