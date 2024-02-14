def bubble_sort(arr)
  #outer loop iterates n-1 times
  #n = number of elements in the arr
  for i in 1..arr.length - 1
    #inner loop iterate n-i times
    for j in 0...arr.length - i
      if arr[j] > arr[j + 1]
        tmp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = tmp
      end
    end
  end
  return arr
end

#test case 1
print bubble_sort([4,3,78,2,0,2])

#expected output
#[0,2,2,3,4,78]
