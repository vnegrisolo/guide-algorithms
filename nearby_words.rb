# frozen_string_literal: true
# Algorith to suggesting when typing
class NearbyWords
  DICTIONARY = %w(hi go).freeze

  # Usage NearbyWords.new.nearby_words('hi')
  def nearby_words(word)
    recursive_nearby_words(word)
  end

  private

  def recursive_nearby_words(word, result = [], partial = '')
    if partial.length >= word.length
      result << partial if word?(partial)
      return result
    end

    nearby_chars(word[partial.length]).each do |c|
      recursive_nearby_words(word, result, add_char(partial, c))
    end
    result
  end

  def add_char(word, char)
    new_word = String.new(word)
    new_word << char
    new_word
  end

  def nearby_chars(char)
    case char
    when 'h' then %w(h g j y b n)
    when 'i' then %w(i u o j k)
    else []
    end
  end

  def word?(word)
    DICTIONARY.include? word
  end
end
