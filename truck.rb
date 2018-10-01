require_relative 'vehicle'

class Truck < Vehicle

  private

  def type
    self.class.to_s
  end
end
