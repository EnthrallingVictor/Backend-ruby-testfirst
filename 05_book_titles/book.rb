class Book



    def title=(title)
        do_not_cap = ['and', 'in', 'the', 'of', 'a', 'an']
        @title = title.split(/ /).each_with_index do |word, index|
            if index == 0 || !do_not_cap.include?(word.downcase) 
                word.capitalize!
            else
                word
            end
        end
    end

    def title
        @title.join(" ")
    end

end