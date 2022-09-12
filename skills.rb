SKILLS = [
  {
    intro: 's is a string, find its length',
    answer: 's.length',
    example: <<~EOD
      'abc'.length
      => 3
      EOD
  },
  {
    intro: 's is a string, remove leading and trailing whitespace',
    answer: 's.strip',
    example: <<~EOD
      "   abc  \\n ".strip
      => "abc"
      EOD
  },
  {
    intro: 's is a string, remove the prefix "log" if present',
    answer: 's.delete_prefix "log"',
    example: <<~EOD
      "log hi".delete_prefix "log"
      => " hi"    
      EOD
  },
  {
    intro: 's is a string, make it UPPERCASE',
    answer: 's.upcase',
    example: <<~EOD
      "abc".upcase
      => "ABC"
      EOD
  },
  {
    intro: 's is a string, make it lowercase',
    answer: 's.downcase',
    example: <<~EOD
      "ABC".downcase
      => "abc"
      EOD
  },
  {
    intro: 's is a string, make the first character uppercase',
    answer: 's.capitalize',
    example: <<~EOD
      "abc".capitalize
      => "Abc"
      EOD
  },
  {
    intro: 's is a string, does it start with "log"?',
    answer: 's.start_with? "log"',
    example: <<~EOD
        irb> "hi".start_with? "log"
        => false
        irb> "hi".start_with? "h"
        => true    
      EOD
  },
  {
    intro: 'what\'s the equivalent of var_dump(a)?',
    answer: 'a.inspect',
    example: <<~EOD
      puts [] # prints nothing
      puts [].inspect # prints "[]"
      EOD
  },
  {
    intro: 'is :x in array a?',
    answer: 'a.include? :x',
    example: <<~EOD
      [1,2,3].include?(1) # true
      [1,2,3].include?(4) # false
      EOD
  },
  {
    intro: 'is :x a key in hash h?',
    answer: 'h.include?(:x)',
    example: <<~EOD
      {a: "hi"}.include?(:a) # true
      {a: "hi"}.include?(:b) # false
      EOD
  },
  {
    intro: 'get the maximum value from array a',
    answer: 'a.max',
    example: <<~EOD
      irb> [1, 5, 2].max
      => 5    
      EOD
  },
  {
    intro: 'what would 10 <=> 5 return?',
    answer: '1',
    example: <<~EOD
      <=> return value: 1 = left greater; 0 = same; -1 = right greater
    EOD
  },
  {
    intro: 'what would 6 <=> 100 return?',
    answer: '-1',
    example: <<~EOD
      <=> return value: 1 = left greater; 0 = same; -1 = right greater
    EOD
  },
  {
    intro: 'what would 5 <=> 5 return?',
    answer: '0',
    example: <<~EOD
      <=> return value: 1 = left greater; 0 = same; -1 = right greater
    EOD
  },
  {
    intro: 'what would `"somestring"[/[so]+/]` return?',
    answer: '"so"',
    example: <<~EOD
      "somestring"[/[so]+/] -> the matched string or nil
    EOD
  },
  {
    intro: 'what would `"somestring"[/[so]+(\S)/, 1]` return?',
    answer: '"m"',
    example: <<~EOD
      "string"[/regex/, n] gets the nth capture group
    EOD
  }
]

loop do
  skill = SKILLS[rand(SKILLS.length)]
  puts skill[:intro]
  answer = gets.chomp
  if answer == skill[:answer]
    puts "Correct!"
  else
    puts "Sorry..."
  end
  puts skill[:example].strip
  gets
end
