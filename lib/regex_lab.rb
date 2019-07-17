require 'pry'

def starts_with_a_vowel?(word)
  word[0] =~ /[aeiou]/i ? true : false
end


def words_starting_with_un_and_ending_with_ing(text)

  array_of_words = text.split(" ")
  un_ing_words = []
  array_of_words.each do |word|
    if word[0..1] =~ /un/i && word[-3..-1] =~ /ing/i
      un_ing_words << word
    end
  end
un_ing_words
end


def words_five_letters_long(text)
  have_5_letters = []
  
  text.split(" ").each do |word|
    if word.length == 5
      have_5_letters << word
    end
  end
  have_5_letters
end


def first_word_capitalized_and_ends_with_punctuation?(text)
   (text[0] =~ /[A-Z]/) && (text[-1] =~ /[!.?]/) ? true : false
end

def valid_phone_number?(phone)
  phone =~ /\(?([0-9]{3})\)?([ -]?)([0-9]{3})([ -]?)([0-9]{4})/ ? true : false
end
