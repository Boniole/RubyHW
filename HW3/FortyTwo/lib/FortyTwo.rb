# frozen_string_literal: true

require_relative "FortyTwo/version"

module FortyTwo
  def fortytwo?
    self == 42
  end    
end

class Integer
  include FortyTwo  
end
