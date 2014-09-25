class Exprparser
rule
  target: exp{ }
  avg_str: 'a' 'v' 'g' {}
  best_str: 'b' 'e' 's' 't' {}
  avg_list: rvalCommaListLoop| '(' rvalCommaListLoop ')'
  rvalCommaListLoop: rval| rvalCommaListLoop ',' rval
  avg: avg_str avg_list
  best_list: rvalCommaListLoop| '(' NUMBER ',' rvalCommaListLoop ')'
  rvalCommaListLoop: rval| rvalCommaListLoop ',' rval
  best: best_str best_list
  rval: 'a'|'b'|'c'
  exp: exp '+' exp {}
     | exp '*' exp {}
     | exp '/' exp {}
     | exp '-' exp {}
     | '(' exp ')' {}
     | avg {}
     | best {}
     | 'a'|'b'|'c'
	 | NUMBER
end
---- inner
def parse(str)
	@q = []
	until str.empty?
		case str
			when /\A\s+/
			when /\A\d+/
				@q.push [:NUMBER, $&.to_i]
			when /\A.|\n/o
				s = $&
				@q.push [s, s]
			end
			str = $'
	end
	@q.push [false, '$end']
	do_parse
end
def next_token
    @q.shift
end
def racc_accept
  @racc_debug_out.puts 'accept'
  @racc_debug_out.puts
end


---- footer

parser = Exprparser.new
puts
puts 'type "Q" to quit.'
puts
while true
  puts
  print '? '
  str = gets.chop!
  break if /q/i =~ str
  begin
    puts "= #{parser.parse(str)}"
  rescue ParseError
    puts $!
  end
end
