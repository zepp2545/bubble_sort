numbers = [5,4,123,76,6,2]
$success = 0

def sort(numbers)
    $success = 0
    (numbers.size-1).times do |index|
        if numbers[index] > numbers[index+1]
            numbers[index], numbers[index+1] = numbers[index+1], numbers[index]
        else 
            $success += 1
        end
    end

    return numbers
end

while $success < numbers.size-1
    sort(numbers)
end

p numbers