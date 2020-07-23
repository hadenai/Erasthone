class ArgumentSignError < ArgumentError
  def initialize
    message = "Height or Width is either zero or negative."
    super(message)
  end
end
