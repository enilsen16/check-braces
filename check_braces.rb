def check_braces(expressions)
  stack = []
  hash = { '[' => ']', '(' => ')', '{' => '}' }
  key = hash.keys
  value = hash.values
  expressions.each do |set|
    if value.include? set[0]
      puts 0
      next
    end
    set.each_char do |char|
      if key.include? char
        stack << char
      elsif value.include? char
        if hash[stack.pop] != char
          puts 0
          break
        end
      end
    end
    puts 1 if stack.empty?
  end
end

check_braces( ["(())","[]({})","([])","{()[]}","([)]", "[])"] )
