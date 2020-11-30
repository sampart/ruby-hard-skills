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
    intro: 'what\'s the equivalent of var_dump(a)?',
    answer: 'a.inspect',
    example: <<~EOD
      puts [] # prints nothing
      puts [].inspect # prints "[]"
      EOD
  },
  {
    intro: 'is :x in array a?',
    answer: 'a.include?(:x)',
    example: <<~EOD
      [1,2,3].include?(1) # true
      [1,2,3].include?(4) # false
      EOD
  },
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
