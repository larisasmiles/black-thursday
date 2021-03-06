require_relative 'test_helper'
require_relative '../lib/invoice_repository'

class InvoiceRepositoryTest < Minitest::Test

  def test_if_it_exists
    inr = InvoiceRepository.new('./test/fixtures/invoices_fixtures.csv', self)

    assert_instance_of InvoiceRepository, inr
  end

  def test_if_it_returns_all_instances_in_array
    inr = InvoiceRepository.new('./test/fixtures/invoices_fixtures.csv', self)

    assert_equal 6, inr.all.count
    assert_instance_of Array, inr.all
    assert_instance_of Invoice, inr.all[0]
  end

  def test_if_it_finds_by_id
    inr = InvoiceRepository.new('./test/fixtures/invoices_fixtures.csv', self)
    assert_instance_of Array, inr.all
    invoice = inr.find_by_id(1)
    assert_equal 12335938, inr.all.find_by_id(0)
  end

end
