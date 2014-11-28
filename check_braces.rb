def check_braces(expressions)
  stack = []
  hash = { '[' => ']', '(' => ')', '{' => '}' }
  key = hash.keys
  value = hash.values
  expressions.each do |set|
    set.each_char do |char|
    if value.include? char && stack.empty?
      puts 0
      next
    end
      if key.include? char
        stack << char
      elsif value.include? char
        if hash[stack.pop] != char
          puts 0
          break
        end
      end
    end
    puts 1 if stack.empty? # rather than check for the zero cases, I need to check for the "puts 1" scenario
  end
end

check_braces( ["(())","[]({})","([])","{()[]}","([)]", "[])"] )
