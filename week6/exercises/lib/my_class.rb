class MyClass
  
  class InvalidOdds < StandardError; end
  
  def self.expensive_operation
    sleep 2
    rand(0.0..1.0)
  end

  def self.report specialized_object=nil

    if specialized_object
      odds = specialized_object.some_method
    else
      odds = expensive_operation
    end

    # keep yourself sane! uncomment to debug
    # puts odds

    if odds < 0 || odds > 1
      raise InvalidOdds, "Expected value between 0 and 1, but got: #{odds}"
    elsif (odds > 0.5 && odds <= 0.99)
      'High'
    elsif (odds <= 0.5 && odds >= 0.01)
      'Low'
    elsif (odds >= 0 && odds < 0.01) || (odds <= 1 && odds > 0.99)
      'RARE!!'
    else
      raise RuntimeError, 'Bug!'
    end

  end

end
