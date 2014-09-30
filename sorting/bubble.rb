#!/usr/bin/env ruby
array=[14,34,32,3,10,2,6]
puts array
puts array.size
swapped=true
while swapped do
	swapped=false
	0.upto(array.size-2) do |i|
		if array[i]>array[i+1]
			array[i],array[i+1]=array[i+1],array[i]
			swapped=true
		end
	end
end
puts "Sorted array :"
puts array
	
