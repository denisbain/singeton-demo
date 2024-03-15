class Logger
  def initialize
    @f = File.open "log.txt", 'a'
  end

  @@x = Logger.new

  def self.instance
    return @@x
  end

  # class method
  def self.say_something
    puts "haha"
  end

  # instance method
  def log_something wat
    @f.puts wat
  end

  # Метод може вызываться только внутри класса (извне недоступен)
  private_class_method :new

end