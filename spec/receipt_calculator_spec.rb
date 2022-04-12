require "spec_helper"

RSpec.describe ReceiptCalculator do
  describe "#add_item" do
    it "adds the cost to the total" do
      calculator = ReceiptCalculator.new

      calculator.add_item(name: "Pizza", quantity: 2, price: 1000)
      total = calculator.total

      expect(total).to eq(2000)
    end
  end

  describe "#total" do
    it "returns the total of the receipt" do
      calculator = ReceiptCalculator.new

      calculator.add_item(name: "Pizza", quantity: 2, price: 1000)
      calculator.add_item(name: "Coke", quantity: 1, price: 500)
      total = calculator.total

      expect(total).to eq(2500)
    end
  end
end
