<<<<<<< HEAD
require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :transactions
  
=======
class CashRegister

  attr_accessor :total, :discount
>>>>>>> 542b83f0e14a4cf8d17152e968a32a5447753550
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
<<<<<<< HEAD
    @items = []
    @transactions = []
=======
>>>>>>> 542b83f0e14a4cf8d17152e968a32a5447753550
  end
  
  def total
    @total
  end
  
  def discount
    @discount
  end

  def add_item(title, price, quantity = 1)
<<<<<<< HEAD
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
=======
    self.total += (price * quantity)
  end
  
  def apply_discount(title, price, quantity = 1)
    add_item(title, price, quantity)
    self.total -= self.discount
    "After the discount, the total comes to $#{self.total}."
  end
    
>>>>>>> 542b83f0e14a4cf8d17152e968a32a5447753550
end