require_relative 'vehicle'

class Motorcycle < Vehicle

  private

  def type
    self.class.to_s
  end
end
