#!/usr/bin/env ruby
array=[14,34,32,3,10,2,6]
puts array
puts array.size
1.upto(array.size-1) do |i|
	j=i;
	puts i;
	while(j>=1) do 
		if array[j]<array[j-1]
			array[j],array[j-1]=array[j-1],array[j];
		end
		j=j-1;
	end
	i=i+1;
end
puts "Sorted array :"
puts array
