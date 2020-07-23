class ArgumentTwoEarthError < ArgumentError
  def initialize
    message = 'The planet earth is not allowed to exist twice !'
    super(message)
  end
end
