require 'csv'
require_relative '../lib/invoice'

class InvoiceRepository
  attr_reader :all, :se

  def initialize(path, se)
    @all = from_csv(path)
    @se  = se
  end
  
  def inspect
   "#<#{self.class} #{@merchants.size} rows>"
  end

  def from_csv(path)
    results = CSV.open(path, headers:true, header_converters: :symbol)
    results.map do |row|
      Invoice.new(row, self)
    end
  end

  def find_by_id(id)
    @all.select do |invoice|
      invoice.id == id
      end.first
  end
end
