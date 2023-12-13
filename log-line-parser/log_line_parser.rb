class LogLineParser
  attr_reader :line
  def initialize(line)
    @line = sanitize(line)
  end

  def sanitize(line)
    line.strip
  end

  def message
    index = line.index(' ')
    line[index..-1].strip
  end

  def log_level
    case line[1]
    when 'E'
      'error'
    when 'I'
      'info'
    when 'W'
      'warning'
    end
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
