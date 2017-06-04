require 'csv'
require './lib/merchant_repository'
require './lib/item_repository'
require './lib/invoice_repository'
require 'pry'

class SalesEngine
  attr_reader :merchants, :items, :invoices

  def initialize(data)
    @merchants = MerchantRepository.new(data[:merchants], self)
    @items     = ItemRepository.new(data[:items], self)
    if data[:invoices] != nil
      @invoices = InvoiceRepository.new(data[:invoices], self)
    end
  end

  def self.from_csv(data)

    SalesEngine.new(data)
  end

  def find_items_by_merchant_id(id)
    item.find_all_items_by_merchant_id(id)
  end

  def find_merchant_by_item_id(id)
    merchants.find_by_id(id)
  end
end
