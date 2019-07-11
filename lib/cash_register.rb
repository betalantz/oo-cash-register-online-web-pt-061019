class CashRegister
  attr_accessor :total, :discount, :items, :transactions

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end

  def add_item(title,price, quantity = 1)
    transaction = price * quantity
    self.total += transaction
    quantity.times do
      self.items << title
    end
    self.transactions << transaction
  end

  def apply_discount
    if @discount != 0
      @total = @total.to_f * (1 - @discount.to_f / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @transactions.pop
  end
end

cr1 = CashRegister.new
cr1.add_item("Nikes", 120, 2)
cr1.add_item("Adidas", 95, 1)
cr1.add_item("Pumas", 80, 3)
cr1.total
cr1.void_last_transaction
cr1.total
cr1.void_last_transaction
cr1.total
