def shuffle(array)
  rec_shuffle(array, [])
end

def rec_shuffle(array, shuffled_array)
  if array.length <= 0  # base case for recursion method
     return shuffled_array
  end

  #find an index from array at random
  rand_index = rand(array.length)

  #push that element into the shuffled_array
  shuffled_array.push(array[rand_index])

  #remove from initial array   
  array.delete_at(rand_index)
  #repeat
  rec_shuffle(array, shuffled_array)
  
end

#words = ["a", "y", "i", "k", "c"]

puts shuffle(["a", "y", "i", "k", "c"])
