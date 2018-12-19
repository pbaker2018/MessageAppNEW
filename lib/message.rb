
class Message

  def initialize(text)
    @text = text
    # @time = Time.now.strftime("%d-%m-%Y %H:%M:%S")
  end

  def show
    @text
  end

end
