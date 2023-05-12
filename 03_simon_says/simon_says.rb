#write your code here

def echo(str) 
    str
end 


def shout(str)
    str.upcase
end 

def repeat(str, n = 2)
    # multiply str n times then remove trailing white spaces
   ((str + " ") * n).strip    
end 


def start_of_word(str, num_of_chars = 1)
    # extracts substring, from starting index(0) & number of characters
    str[0, num_of_chars]
end 


def first_word(str)
    # extracts first element in array after splitting string 
    str.split[0]

    # regex solution 
    # str[/\w+/]    
end 


def titleize(str)
    str_array = str.split(" ")  
    titleize_array = []

    return str.capitalize unless str_array.length > 1


    str_array.each do |word|                         
        if (word.length > 4) || (word == str_array[-1]) # accounts for strings at last index
            titleize_array << word.capitalize 
            #puts titleize_array 
        else 
            titleize_array << word
            #puts titleize_array 
        end 
    end
    
    # remove first element form the array and capitalize it
    first_element = titleize_array.shift.capitalize

    # place the first element at the start of the array before joining array into  a string 
    return titleize_array.unshift(first_element).join(" ")

end  


puts titleize("david copperfield")
puts titleize("war and peace")
puts titleize("the bridge over the river kwai")