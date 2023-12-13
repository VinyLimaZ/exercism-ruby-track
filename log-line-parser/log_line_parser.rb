class LogLineParser
  attr_reader :line
  def initialize(line)
    @line = split(line)
  end

  def split(line)
    line.split(': ')
  end

  def message
    line[1].strip
  end

  def log_level
    line[0][/[A-Z]+/].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
