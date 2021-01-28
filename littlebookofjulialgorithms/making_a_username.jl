function username(forename, surename, year)
    username_out = year[3:4] * forename[1] * surename

    println("Your username is " * username_out)
end

println("Enter yout first name: ")
first_name = readline()
println("Enter your surename: ")
last_name = readline()
println("Enter the year you joined the scool: ")
joined = readline()

username(first_name, last_name, joined)
