#write your code here

def translate(string)

    
    string_array = string.downcase.split(" ")
    # create empty string to hold new value
     pig_string_array = []

     alphabets = ('a'..'z').to_a
     vowels = %w[a e i o u]
     consonant = alphabets - vowels
     part_of_word = ""

    string_array.each do |word|
        if word.start_with?(/[aeiou]/)
            pig_string_array << word + "ay"
        elsif word.start_with?("sch")
            part_of_word = "sch"
            pig_string_array << word[3..-1] + part_of_word + "ay"
        elsif word.start_with?("qu")
            part_of_word = "qu"
            pig_string_array << word[2..-1] + part_of_word + "ay"
        elsif consonant.include?(word[0]) && word[1..2] == "qu"
            part_of_word = word[0..2]
            pig_string_array << word[3..-1] + part_of_word + "ay"
        elsif consonant.include?(word[0]) && consonant.include?(word[1]) && consonant.include?(word[2])
            part_of_word = word[0..2]
            pig_string_array << word[3..-1] + part_of_word + "ay"
        elsif consonant.include?(word[0]) && consonant.include?(word[1])
            part_of_word = word[0..1]
            pig_string_array << word[2..-1] + part_of_word + "ay"
        else  
            pig_string_array << word[1..-1] + word[0] + "ay"
        end 
    end

    pig_string_array.join(" ")

end  
    