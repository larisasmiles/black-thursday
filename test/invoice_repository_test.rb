require_relative 'test_helper'
require './lib/invoice_repository'

class InvoiceRepositoryTest < Minitest::Test

  def test_if_it_exists
    inr = InvoiceRepository.new

    assert_instance_of InvoiceRepository, inr
  end

  def test_if_it_returns_all_instances_in_array
    assert_instance_of Array, inr
  end
end
