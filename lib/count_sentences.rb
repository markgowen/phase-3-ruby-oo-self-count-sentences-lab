# require "pry"

class String
  #define a method that returns the number of sentences in a string
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
    #use split and filter to count the number of sentences
    self.split(/\.|\?|\!/).filter { |sentence| !sentence.empty? }.size
  end
end
