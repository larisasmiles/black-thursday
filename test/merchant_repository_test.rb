require 'minitest/autorun'
require 'minitest/pride'
require './lib/merchant_repository'

class MerchantRepositoryTest < Minitest::Test

  def test_if_it_exists
    mr = MerchantRepository.new

    assert_equal MerchantRepository, mr
  end
end
