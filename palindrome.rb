# Algorith to palindroma
class Palindrome
  def palindrome?(text)
    text = let_alpha_numeric(text)
    return true if text.size < 2

    i = 0
    j = text.size - 1
    while i < j
      return false if text[i] != text[j]
      i += 1
      j -= 1
    end

    true
  end

  private

  def let_alpha_numeric(text)
    text.downcase.gsub(/[^a-z0-9]/, '')
  end
end
