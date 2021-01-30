require 'pry'

class String

  def endchecker(check)
    if self.end_with?(check)
      return true
    else 
      false 
    end
  end 

  def sentence?
    endchecker(".")
  end

  def question?
    endchecker("?")
  end

  def exclamation?
    endchecker("!")
  end

  def count_sentences
    array = []
    #greedy repetition from "+" = repeated one or more times 
    array = self.split(/[.?!]+/)
    return array.length
  end
end