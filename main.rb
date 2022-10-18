def Symb(instr) 
    str = instr.split('')
    length_a = str.length
    
    for l in 0..length_a do
        str = FindOpen(str)
        if str.length == 0
            break
        end
    end
    
    if str.length == 0
        return true
    else
        return false
    end
end

def FindOpen(line)
    open_braces = ["(", "{", "["]
    close_braces = [")", "}", "]"]

   for i in 0..line.length
        is_found = false
        for s in 0..open_braces.length do
            if line[i] == open_braces[s] and line[i+1] == close_braces[s]
                is_found = true
                line.delete_at(i)
                line.delete_at(i)
                break
            end
        end

        if is_found == true
            return line
        end
    end
    return line
end

loop do
    print("Line: ")
    user_line = gets.chomp 
    if user_line == '0'
        break
    end
    puts(Symb(user_line))
end
