class ArgumentTwoEarthError < ArgumentError
  def initalize(_msg = nil)
    message = 'The planet earth is not allowed to exist twice !'
    super(message)
  end
end
