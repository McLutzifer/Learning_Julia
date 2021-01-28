i = true
j = false
x = "Hi"

for i in 1:1600
        if i%15 == 0
                println("FizzBuzz")
        elseif i%5 == 0
                println("Buzz")
        elseif i%3 == 0
                println("Fizz")
        else
                println(i)
        end
end
