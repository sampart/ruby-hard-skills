SKILLS = [
  {
    intro: 's is a string, find its length',
    answer: 's.length',
    example: <<~HERE
      'abc'.length
      => 3
    HERE
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
