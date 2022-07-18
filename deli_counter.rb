# Write your code here.
katz_deli = []

def line (queue)
    if queue.empty?
        puts "The line is currently empty."
    else
        current_line = "The line is currently:"
        queue.each.with_index(1) do |person, i|
            current_line << (" #{i}. #{person}")
        end
        puts current_line
    end
end

def take_a_number(deli, name) 
    deli.push(name)
    puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(queue)
    if queue.empty?
        puts 'There is nobody waiting to be served!'
    else
        puts "Currently serving #{queue[0]}."
        queue.shift 
    end
end
