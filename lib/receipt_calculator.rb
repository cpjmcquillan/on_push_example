class ReceiptCalculator
  attr_reader :total

  def initialize
    @total = 0
  end

  def add_item(name:, quantity:, price:)
    cost = quantity * price
    @total = total + cost
  end
end
