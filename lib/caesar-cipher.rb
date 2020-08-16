require 'pry'

# "What a string!" ->  "Bmfy f xywnsl!"

=begin

Getting the patterns right:

- a -> bcde -> f
- W -> xyza -> B
- h -> ijkl -> m

So, every letter is replaced by n letters after that.

Algorithms:

- Create a dictionary of letters from a-z + n more letters
- Create a temp variable filled with an empty string

- Loop each ltr in inputted words
    - Create a temp2 variable filled with an empty string

    - Loop each index d in dictionary
        - If ltr is equal to dictionary[d]
            - Assign temp with dictionary[d + n]
        - Else if ltr is equal to uppercase of dictionary[d]
            - Assign temp with uppercase of dictionary[d + n]
        - Else
            - Assign temp with ltr
    
    - Add temp2 to temp

- Return temp
    
=end

def caesar_cipher(str, n)
    return 'Type of `str` must be String'if str.class != String
    return 'Type of `n` must be Integer' if n.class != Integer

    dict = 'abcdefghijklmnopqrstuvwxyz'

    for i in 0..n
        dict += dict[i]
    end

    temp = ''

    # Loop through string

    for s in 0..str.length-1
        temp2 = str[s]

        # Loop through dictionary
        
        for d in 0..dict.length-1

            # When current string is the same with the currect letter in dictionary, replace it with the one added with n
            
            if str[s] == dict[d]
                temp2 = dict[d+n]
                break
            elsif str[s] == dict[d].upcase
                temp2 = dict[d+n].upcase
                break
            end
        end

        temp += temp2
    end

    # binding.pry
    temp
end

# pp caesar_cipher("What a string!", 5)