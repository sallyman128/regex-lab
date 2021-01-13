require 'pry'

def starts_with_a_vowel?(word)
  return true if word.match(/\b+[aeiou]/i) != nil
  false
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b[a-z]{5}\b/i)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  text.match?(/^[A-Z] .+[.?!]/)
end

def valid_phone_number?(phone)
  arr = phone.scan(/\d+ \d+ \d+/x)
  arr.join.length == 10
end
