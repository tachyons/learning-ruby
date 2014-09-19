#!/usr/bin/env ruby
puts "Enter the File name"
file_name=$stdin.gets().chomp
#puts file_name;
file = File.open(file_name)
f = File.new("output.txt", "w")
file.each {|line|
	words = line.split(/\W+/)
	$new_str="";
	words.each {|word|
		if word==word.reverse
			$new_str+="\""+word+"\"";
		else
			$new_str+=word;
		end
		$new_str+=" ";
	}
	$new_str+="\n";
	f.write($new_str);
}
file.close
f.close;
