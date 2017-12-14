
def sort(unsorted_words)
    # calls recursive sort. It passes it in an array
    # which will then move into the recursive_sort method.
    rec_sort(unsorted_words, [])
end

def rec_sort(unsorted, sorted)
    # if unsorted is empty then there is nothing to do and when can
    #return the sorted list
    if unsorted.length <= 0
     return sorted
    end
    
    #change all letters to downcase 
    
    #*****must use .map and not .each. Map performs an action 
    #on each element and creates a new array with the results
    unsorted.map!{|item| item.downcase}

    # find the smallest word in the array and push it to sorted
    # change words to downcase first or a Capital 'C' will come before a 
    # lower case 'a'
    smallest_word = unsorted.min
    
    # push the smallest word into sorted array
    sorted << smallest_word
    
    #
    unsorted.delete_at(unsorted.find_index(smallest_word))
    #**** delete_at needs a index to delete from
    #delete the smallest word from the unsorted array otherwise 
    #you will get a stack level too deep error
    #rec_sort does the same thing over again
    rec_sort(unsorted, sorted)
end


words = ["a", "Y", "I", "k", "C"]


puts sort(words)