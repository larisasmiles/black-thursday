class MerchantRepository
  require "pry"
    attr_reader :path, :all

  def initialize(path)
    @path = path
    @all ||=path.map { |row| Merchant.new(row, self) }
  end

  def find_by_id
    all.find { |object| objext.id == id }
  end

  def find_all_by_name(name)
    all.find_all do |object|
      object.name.downcase.icnlude?(name.downcase)
    end
  end
end
