require_relative 'test_helper'
require './lib/merchant_repository'

class MerchantRepositoryTest < Minitest::Test

  def test_if_it_exists
    mr = MerchantRepository.new(path)

    assert_equal MerchantRepository, mr
  end

  def test_if_all_returns_an_array
  
  end
end
