require_relative 'vehicle'

class Car < Vehicle

  private
  
  def type
    self.class.to_s  
  end
end

