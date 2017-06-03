require_relative 'test_helper'
require './lib/invoice'

class InvoiceTest < Minitest::Test

  def test_if_it_exists
    inv = Invoice.new

    assert_instance_of Invoice, inv
  end
end
