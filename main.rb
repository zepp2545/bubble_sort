numbers = [4,3,78,2,0,2]
$success = 0

def main(numbers)
    numbers = sort(numbers)

    if $success == numbers.size-1
        return numbers
    else
        sort(numbers)    
    end
end


def sort(numbers)
    $success = 0
    (numbers.size-1).times do |index|
        if numbers[index] >= numbers[index+1]
            numbers[index], numbers[index+1] = numbers[index+1], numbers[index]
            p numbers
        else 
            $success += 1
        end
    end

    p $success

    return numbers

end

p main(numbers)