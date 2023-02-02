require 'pry'

class String

  def report_on_self
    "Self is: #{self}"
  end

  def sentence?
    self.end_with?(".")
  end


  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence = self.split(/\.|\?|!/)
    sentence.filter { |sentence| !sentence.empty? }.size
  end
  
end