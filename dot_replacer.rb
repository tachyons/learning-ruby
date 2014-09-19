#!/usr/bin/env ruby
	puts "Enter the File name"
	file_name=$stdin.gets().chomp
	puts file_name;
	file = File.open(file_name)
	f = File.new("output.txt", "w") 
	file.each {|line| 
		new_str = line.sub( %r{\w+(\.\w+)+}, '<a href="\0">\0</a>' )
		f.write(new_str);
		print new_str
	}
	file.close
	f.close;
	puts file;
