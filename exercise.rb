class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # setup for punctuation check
    punct = "?,.!"
    regex_punct = /[#{punct.gsub(/./){|char| "\\#{char}"}}]/

    # tokenize
    words = str.split(" ")
    n_words = words.length()
    # check each word
    for i in 0..n_words-1 do
        if words[i].length() > 4
            # check trailing punctuation
            p = ""
            if words[i] =~ regex_punct
                p = words[i][-1,1]
            end

            # do substitution
            if words[i][0,1] == words[i][0,1].upcase
                words[i] = "Marklar" + p
            else
                words[i] = "marklar" + p
            end
        end
    end
    
    # reassemble array into a string
    return words.join(" ")

  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    i = 1
    j = 1
    n = 2

    arr = []
    while n < nth do 
        # update fib sequence
        nextfib = i + j
        i = j
        j = nextfib
        n += 1

        # store if even
        if j % 2 == 0
            arr.append(j)
        end
    end  
    return arr.sum()

  end

end
