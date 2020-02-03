require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :transactions
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end
  
  def total
    @total
  end
  
  def discount
    @discount
  end

  def add_item(title, price, quantity = 1)
    self.transactions << (price * quantity)
    self.total += (price * quantity)
    quantity.times {self.items.push(title)}
    
  end
  
  def apply_discount
    if self.discount != 0 
      self.total -= (self.discount)*(0.01)*(self.total)
      "After the discount, the total comes to $#{self.total.to_i}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total -= self.transactions.pop
  end
end