def check_braces(expressions)
  stack = []
  count = 0
  hash = { '[' => ']', '(' => ')', '{' => '}' }
  key = hash.keys
  value = hash.values
  expressions.each do |set|
    set.each_char do |char|
      count += 1
      if key.include? char
        stack << char
      elsif value.include? char
        if stack.empty?
          puts 0
          break
        elsif hash[stack.pop] != char
          puts 0
          break
        end
      end
    end
    puts 1 if stack.empty? && set.length == count
    count = 0
  end
end

check_braces( ["(())","[)]({})","{()[]}","([)]", "[]))"] )
