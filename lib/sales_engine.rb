require 'csv'
require_relative '../lib/merchant_repository'
require_relative '../lib/item_repository'
require_relative '../lib/invoice_repository'
require_relative '../lib/sales_analyst'

class SalesEngine
  attr_reader :merchants, :items, :invoices

  def initialize(data)
    if data[:merchants] != nil
      @merchants         = MerchantRepository.new(data[:merchants], self)
    end
    if data[:items] != nil
      @items         = ItemRepository.new(data[:items], self)
    end
      @sales_analyst = SalesAnalyst.new(self)
    if data[:invoices] != nil
      @invoices         = InvoiceRepository.new(data[:invoices], self)
    end
  end

  def self.from_csv(data)
     SalesEngine.new(data)
  end

  def find_items_by_merchant_id(id)
    item.find_all_items_by_merchant_id(id)
  end

  def collected_items(id)
    @items.find_all_by_merchant_id(id)
  end

  def find_merchant_by_item_id(id)
    merchants.find_by_id(id)
  end
end
