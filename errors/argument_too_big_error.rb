class ArgumentTooBigError < ArgumentError
  def initialize(msg = nil)
    message = "Height or Width is over 100000 !!"
    super(message)
  end
end
