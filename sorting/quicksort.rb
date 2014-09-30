#!/usr/bin/env ruby
def quicksort(array, from=0, to=nil)
    if to == nil
        # Sort the whole array, by default
        to = array.count - 1
    end
 
    if from >= to
        # Done sorting
        return
    end
 
    # Take a pivot value, at the far left
    pivot = array[from]
 
    # Min and Max pointers
    min = from
    max = to
 
    # Current free slot
    free = min
 
    while min < max
        if free == min # Evaluate array[max]
            if array[max] <= pivot # Smaller than pivot, must move
                array[free] = array[max]
                min += 1
                free = max
            else
                max -= 1
            end
        elsif free == max # Evaluate array[min]
            if array[min] >= pivot # Bigger than pivot, must move
                array[free] = array[min]
                max -= 1
                free = min
            else
                min += 1
            end
        else
            raise "Inconsistent state"
        end
    end
 
    array[free] = pivot
 
    quicksort array, from, free - 1
    quicksort array, free + 1, to
end

array=[14,34,32,3,10,2,6]
puts array
puts array.size
quicksort(array);
puts "Sorted array :"
puts array