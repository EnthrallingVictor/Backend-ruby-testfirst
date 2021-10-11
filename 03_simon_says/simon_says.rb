#write your code here

def echo(word_to_echo)
    word_to_echo
end

def shout(word_to_shout)
    word_to_shout.upcase
end

def repeat(word_to_repeat, times_to_repeat = 2)
    "#{word_to_repeat}" + " #{word_to_repeat}" * (times_to_repeat - 1)
end

def start_of_word(first_letters, letters = 1)
    first_letters.split(//).slice(0, letters).join
end

def first_word(new_string)
    new_string.split().slice(0)
end

def titleize(input)
    little_words = ["and", "over", "the"]
    output = input.split().each_with_index.map do |word, index| 
        if index == 0 || !little_words.include?(word)
            word.capitalize!
        else
            word
        end 
    end
    output.join(" ")

end
