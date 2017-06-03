require_relative 'test_helper'
require './lib/merchant_repository'

class MerchantRepositoryTest < Minitest::Test

  def test_if_it_exists
    mr = MerchantRepository.new('./test/fixtures/merchants_fixture.csv')

    assert_instance_of MerchantRepository, mr
  end

  def test_if_all_returns_all_merchants
    mr = MerchantRepository.new('./test/fixtures/merchants_fixture.csv')

    assert_equal 3, mr.all.count
    assert_instance_of Merchant, mr.all[0]
    assert_instance_of Array, mr.all 
  end

  def test_if_it_finds_merchant_by_id
    mr = MerchantRepository.new('./test/fixtures/merchants_fixture.csv')
    merchant = mr.find_by_id(12334105)

    assert_instance_of Merchant, merchant

    assert_equal "Shopin1901", merchant.name

    merchant = mr.find_by_id(12334113)

    assert_equal 12334113, merchant.id

  end

  def test_if_it_finds_by_name
    mr = MerchantRepository.new('./test/fixtures/merchants_fixture.csv')
    merchant = mr.find_by_name("Shopin1901")

    assert_equal "Shopin1901", merchant.name
  end

  def test_if_it_finds_all_by_name
    mr = MerchantRepository.new('./test/fixtures/merchants_fixture.csv')

    assert_instance_of Array, mr.find_all_by_name("shopin1901")
  end

end
