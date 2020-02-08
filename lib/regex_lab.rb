require "pry"

def starts_with_a_vowel?(word)
    if word[0].scan(/[aeiouAEIOU]/).length > 0
        true
    else
        false
    end
end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/\bun\w*ing\b/)
end

def words_five_letters_long(text)
    # text = "extreme briny crepe parking snaps grouping snafu round dog be fork spoon"
    # text.scan(/\w{5}/) was my solution however the "\b" boundaries are needed.
    # => ["extre", "briny", "crepe", "parki", "snaps", "group", "snafu", "round", "spoon"]
    # Without the boundaries, \b, this code cuts or limits words to length of 5.
    text.scan(/\b\w{5}\b/)
    # => ["briny", "crepe", "snaps", "snafu", "round", "spoon"]
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    # text = "I stepped on a Corn Flake, now I'm a cereal killer."
    # Don't forget that the period needs to have the escape character in front to match.
    # Using carrat ^ and dollar $, refers to the entire line of text.
    # Using .match returns the first item in string that matches regex.
    if text.match(/^[A-Z].+[\.?!]$/)
        true
    else
        false
    end
end

def valid_phone_number?(phone)
    phone.match(/([0-9] *){10}|(\([0-9]{3}\)(([0-9]{3}-[0-9]{4})|[0-9]{7})\b)/) ? true : false
end
