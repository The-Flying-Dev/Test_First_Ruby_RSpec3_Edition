#write your code here

def translate(string)

    string_array = string.split(" ")
    # create empty string to hold new value
     pig_string_array = []
     
    string_array.each do |word|
        if word.start_with?(/[aeiou]/)
            pig_string_array << word + "ay"
        else  
            pig_string_array << word[1..-1] + word[0] + "ay"
        end 
    end

    pig_string_array.join(" ")

end
