#!/usr/bin/env ruby
array=[14,34,32,3,10,2,6]
puts array
puts array.size
0.upto(array.size-2) do |i|
	imin=i;
	(i+1).upto(array.size-1) do |j|
		if array[j]<array[imin]
			imin=j
		end
	end
	if (imin!=i)
		array[i],array[imin]=array[imin],array[i]
	end
end
puts "Sorted array :"
puts array
