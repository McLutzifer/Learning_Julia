println("Enter the first number: ")
num1 = parse(Int, readline())
#num1 = 3
println("Enter the second number: ")
num2 = parse(Int, readline())
#num2 = 13

if num1 <= num2
    lowest = num1
else
    lowest = num2
end

println("The lowest number is ", lowest)
