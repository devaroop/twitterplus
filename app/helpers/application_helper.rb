module ApplicationHelper

  def capitalize(word)
    word[0] = word.first.capitalize[0]
    word
  end

end
