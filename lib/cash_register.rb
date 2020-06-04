require "pry"

class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        self.last_transaction = (price * quantity)
        self.total += last_transaction
        quantity.times { self.items << title }
        # binding.pry
    end

    def apply_discount
        if self.discount == 0
            return "There is no discount to apply."
        else
            self.total -= total * discount / 100
            return "After the discount, the total comes to $#{total}."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end


    

end
