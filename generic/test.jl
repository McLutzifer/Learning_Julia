
# recursive loop
function fact(n)
    if n == 1
        return(1)
    else
        return n * fact(n-1)
        println(n)
    end
end

x = fact(5)

println(x)

for num in 10:20
    println(num)
end

number = 1
while number <= 5
    global number += 1
    println(number)
end

array = [5, 10, 15, 20]
newarray = []
for element in array
    if element == 10
        append!(newarray, element)
    elseif element == 20
        append!(newarray, element)
    end
end
println(newarray)

println(4 == 4)
println(0 == false)


thestr = "This is some text"
printstyled(thestr)
println()
printstyled(thestr, bold=true)
println()
printstyled(thestr, bold=true, color=:red)
println()