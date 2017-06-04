require 'csv'
require "pry"
require_relative 'merchant'

class MerchantRepository
    attr_reader :all, :se

  def initialize(path, se)
    @all  = from_csv(path)
    @se   = se
  end

  def from_csv(path)
    results = CSV.open(path, headers:true, header_converters: :symbol)
    results.map do |row|
      Merchant.new(row, self)
    end
  end


  def find_by_id(id)
    @all.select do |merchant|
      merchant.id == id
    end.first
  end

  def find_by_name(name)
    @all.find do |merchant|
      merchant.name == name
    end
  end

  def find_all_by_name(name)
    @all.find_all do |object|
      object.name.downcase.include?(name.downcase)
    end
  end
end
