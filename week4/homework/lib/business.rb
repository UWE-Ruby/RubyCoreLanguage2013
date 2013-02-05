class Business

  attr_reader :name
  attr_accessor :address
  attr_accessor :hours

  def initialize name, tax_id
    @name = name
    @tax_id = tax_id
  end

  def business_card
    "#{self.name}\n#{'=' * self.name.size}\n\n#{self.address}\nOpen: #{self.hours}\nTax Id: #{@tax_id}"
  end

end