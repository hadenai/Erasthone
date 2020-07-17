class ArgumentSignError < ArgumentError
  def initalize(msg = nil)
    message = "List of numbers is either or negative."
    super(message)
  end
end
