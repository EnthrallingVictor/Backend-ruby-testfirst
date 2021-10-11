#write your code here

def translate(s)
    
    translated = s.split(' ').each.map do |word|
    
        vowels = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
        qu_arr = ["qu", "Qu"]
        first_letter = word[0]
        second_letter = word[1]
        third_letter = word[2]
        qu = word[0..1]
        qu2 = word[1..2]
        consonants = Array.new

        if vowels.include?(first_letter) 
            "#{word}ay"
        else 
            if !vowels.include?(first_letter)
                if qu_arr.include?(qu)
                    consonants.push(word[0])
                    consonants.push(word[1])
                elsif 
                    consonants.push(first_letter)
                    if qu_arr.include?(qu2)
                        consonants.push(word[1])
                        consonants.push(word[2])
                    elsif
                        !vowels.include?(second_letter)
                        consonants.push(second_letter)
                        if !vowels.include?(third_letter)
                            consonants.push(third_letter)
                        end
                    end
                end
            end
            "#{word[consonants.length..-1]}" + consonants.join('') + "ay"
        end
    end
    translated.join(" ")
end


