#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.9
# from Racc grammer file "".
#

require 'racc/parser.rb'
class Exprparser < Racc::Parser

module_eval(<<'...end parse.y/module_eval...', 'parse.y', 24)
def parse(str)
	@q = []
	until str.empty?
		case str
			when /\A\s+/
			when /\A\d+/
				#@q.push [:NUMBER, $&.to_i]
			when /\A.|\n/o
				#s = $&
				#@q.push [s, s]
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


...end parse.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
     3,    23,    23,     4,    24,    24,    39,     7,    43,    37,
    11,    10,    25,    25,     3,    23,    23,     4,    24,    24,
    37,     7,    36,    20,    11,    10,    25,    25,    23,    35,
     3,    24,    30,     4,    41,    27,    18,     7,    17,    25,
    11,    10,     3,    44,     3,     4,    12,     4,    37,     7,
   nil,     7,    11,    10,    11,    10,     3,    46,    37,     4,
   nil,   nil,   nil,     7,    40,   nil,    11,    10,    13,    14,
    15,    16,    13,    14,    15,    16,    13,    14,    15,    16,
    13,    14,    15,    16,    13,    14,    15,    16,    13,    14,
    15,    16 ]

racc_action_check = [
     0,    44,    20,     0,    44,    20,    27,     0,    38,    38,
     0,     0,    44,    20,    16,    37,     5,    16,    37,     5,
    26,    16,    18,     5,    16,    16,    37,     5,     6,    17,
     7,     6,    12,     7,    36,     6,     4,     7,     3,     6,
     7,     7,    15,    39,    14,    15,     1,    14,    19,    15,
   nil,    14,    15,    15,    14,    14,    13,    45,    45,    13,
   nil,   nil,   nil,    13,    29,   nil,    13,    13,    29,    29,
    29,    29,    33,    33,    33,    33,    31,    31,    31,    31,
     2,     2,     2,     2,    34,    34,    34,    34,    32,    32,
    32,    32 ]

racc_action_pointer = [
    -2,    46,    66,    35,    30,    14,    26,    28,   nil,   nil,
   nil,   nil,    32,    54,    42,    40,    12,    25,    15,    37,
     0,   nil,   nil,   nil,   nil,   nil,     9,    -6,   nil,    54,
   nil,    62,    74,    58,    70,   nil,    26,    13,    -2,    32,
   nil,   nil,   nil,   nil,    -1,    47,   nil ]

racc_action_default = [
   -28,   -28,    -1,   -24,   -25,   -28,   -28,   -28,   -22,   -23,
   -26,   -27,   -28,   -28,   -28,   -28,   -28,   -28,   -28,    -4,
   -28,    -6,    -8,   -14,   -15,   -16,    -9,   -28,   -13,   -28,
    47,   -17,   -18,   -19,   -20,    -2,   -28,   -28,   -28,   -28,
   -21,    -3,    -7,    -5,   -28,   -28,   -10 ]

racc_goto_table = [
    19,    26,     1,     2,    22,    42,    28,   nil,   nil,   nil,
    29,   nil,   nil,   nil,   nil,    38,    31,    32,    33,    34,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    45 ]

racc_goto_check = [
     6,     6,     1,     2,     5,     7,     9,   nil,   nil,   nil,
     2,   nil,   nil,   nil,   nil,     6,     2,     2,     2,     2,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     6 ]

racc_goto_pointer = [
   nil,     2,     3,   nil,   nil,    -1,    -5,   -32,   nil,     0,
   nil ]

racc_goto_default = [
   nil,   nil,   nil,     5,     6,   nil,   nil,    21,     8,   nil,
     9 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 19, :_reduce_1,
  3, 21, :_reduce_2,
  4, 22, :_reduce_3,
  1, 23, :_reduce_none,
  3, 23, :_reduce_none,
  1, 24, :_reduce_none,
  3, 24, :_reduce_none,
  2, 26, :_reduce_none,
  1, 27, :_reduce_none,
  5, 27, :_reduce_none,
  1, 24, :_reduce_none,
  3, 24, :_reduce_none,
  2, 28, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  3, 20, :_reduce_17,
  3, 20, :_reduce_18,
  3, 20, :_reduce_19,
  3, 20, :_reduce_20,
  3, 20, :_reduce_21,
  1, 20, :_reduce_22,
  1, 20, :_reduce_23,
  1, 20, :_reduce_none,
  1, 20, :_reduce_none,
  1, 20, :_reduce_none,
  1, 20, :_reduce_none ]

racc_reduce_n = 28

racc_shift_n = 47

racc_token_table = {
  false => 0,
  :error => 1,
  "a" => 2,
  "v" => 3,
  "g" => 4,
  "b" => 5,
  "e" => 6,
  "s" => 7,
  "t" => 8,
  "(" => 9,
  ")" => 10,
  "," => 11,
  :NUMBER => 12,
  "c" => 13,
  "+" => 14,
  "*" => 15,
  "/" => 16,
  "-" => 17 }

racc_nt_base = 18

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "\"a\"",
  "\"v\"",
  "\"g\"",
  "\"b\"",
  "\"e\"",
  "\"s\"",
  "\"t\"",
  "\"(\"",
  "\")\"",
  "\",\"",
  "NUMBER",
  "\"c\"",
  "\"+\"",
  "\"*\"",
  "\"/\"",
  "\"-\"",
  "$start",
  "target",
  "exp",
  "avg_str",
  "best_str",
  "avg_list",
  "rvalCommaListLoop",
  "rval",
  "avg",
  "best_list",
  "best" ]

Racc_debug_parser = true

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'parse.y', 2)
  def _reduce_1(val, _values, result)
     
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 3)
  def _reduce_2(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 4)
  def _reduce_3(val, _values, result)
    
    result
  end
.,.,

# reduce 4 omitted

# reduce 5 omitted

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

module_eval(<<'.,.,', 'parse.y', 12)
  def _reduce_17(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 13)
  def _reduce_18(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 14)
  def _reduce_19(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 15)
  def _reduce_20(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 16)
  def _reduce_21(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 17)
  def _reduce_22(val, _values, result)
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parse.y', 18)
  def _reduce_23(val, _values, result)
    
    result
  end
.,.,

# reduce 24 omitted

# reduce 25 omitted

# reduce 26 omitted

# reduce 27 omitted

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Exprparser


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
