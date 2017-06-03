require_relative 'test_helper'
require './lib/invoice'

class InvoiceTest < Minitest::Test
    attr_reader :i

  def setup
    @i = Invoice.new({
      :id          => 6,
      :customer_id => 7,
      :merchant_id => 8,
      :status      => "pending",
      :created_at  => Time.now,
      :updated_at  => Time.now
      })
  end

  def test_if_it_exists
    assert_instance_of Invoice, @i
  end

  def test_if_it_returns_the_integer_id
    assert_equal 6, @i.id
  end

  def test_if_it_returns_the_customer_id
    assert_equal 7, @i.customer_id
  end

  def test_if_it_returns_the_merchant_id
    assert_equal 8, @i.merchant_id
  end

  def tet_if_it_returns_the_status
    assert_equal "pending", @i.status
  end

  # def test_if_it_returns_created_at
  #   assert_equal Time, @i.created_at
  # end

  # def test_if_it_returns_updated_at
  #   assert_equal Time, @i.updated_at
  # end
end
