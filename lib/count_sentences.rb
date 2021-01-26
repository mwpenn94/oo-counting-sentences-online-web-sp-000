require 'pry'

class String

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
    sentence = []
    sentence_finder = self.split(/\.|\?|\![^a-z]|$/)
		sentence_finder.each do |string|
			 if string.size > 1
				sentence << string
			 end
		end
		sentence.count
  end
end