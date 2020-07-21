class ArgumentTooBigError < ArgumentError
  def initalize(msg = nil)
    message = "Max numbers is over 100000!!."
    super(message)
  end
end
