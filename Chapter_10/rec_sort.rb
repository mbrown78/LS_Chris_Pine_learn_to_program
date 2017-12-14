
def sort(unsorted_words)
    # calls recursive sort. It passes it in an array
    # which will then move into the recursive_sort.

    return rec_sort(unsorted_words, [])
end

def rec_sort(unsorted, sorted)
    # if unsorted is empty then there is nothing to do and  can
    #return the sorted list
    # base case
    if unsorted.length <= 0
     return sorted
    end

    smallest_word = unsorted.min
    # find the smallest word in the array and push it to sorted
    sorted << smallest_word
    unsorted.delete_at(unsorted.find_index(smallest_word))
    # delete_at needs a index to delete from
    #delete the smallest word from the unsorted array otherwise 
    #you will get a stack level too deep error
    # rec_sort does the same thing over again
    rec_sort(unsorted, sorted)
end


words = ["a", "y", "i", "k", "c"]

puts sort(words)