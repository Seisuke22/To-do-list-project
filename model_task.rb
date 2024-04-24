class ModelTask
  attr_reader :title
  def initialize(title)
    @title = title
    @done = false
  end

  def mark_complete
    @done = true
  end

  def done?
    @done
  end
end
