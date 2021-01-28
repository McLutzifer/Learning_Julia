using Random
using Dates

first = 1
println(first)

second = 'J'
println(second)

const MEANING_OF_LIFE = 42

second = 7
println(second)

MEANING_OF_LIFE = 90

println(MEANING_OF_LIFE)

function testfunc()
    x::String = "some text"
    #x=10 -> Error
end

testfunc()

function helloworld()
    println("HEllo World!")
end


function helloworld(count::Int)
    for i in 1:count
        println("Hello World ", i)
    end
end

helloworld()

helloworld(3)

a = Int16(1)
println(typeof(a))

b = Int(2000)
println(typeof(b))

c = UInt16(1)
println(typeof(c))

d = 40
println(typeof(d))


println("Int8 typemax: " , typemax(Int8))
println("Int8 typemin: " , typemin(Int8))
println("Int32 typemax: " , typemax(Int32))
println("Int32 typemin: " , typemin(Int32))
println("Int64 typemax: " , typemax(Int64))
println("Int64 typemin: " , typemin(Int64))


println(Sys.WORD_SIZE)
# a = UInt8(300) Error
println(1.0 / 0.0)
println(1.0/Inf)
println(0.0/0.0)

println(zero(Float64))
println(one(UInt32))

mychar = 'x'
println(Int(mychar))
println(Char(120))

mystr = "This is a sample string in Julia"
myotherstr = """
    Hello There
    This is a string
    """

println(length(mystr))
println(mystr[1])
println(mystr[end])
println(mystr[end-3])
println(mystr[2:end-1])

for c in mystr
    print(c)
end

w1 = "Hello"
w2 = "world"

println(w1 * ", " * w2 * ".")

if 5 == 5
    println("5 is 5")
end
if 5 < 2
    print("no")
else
    print("si senior")
end


function addnumbers(numberone, numbertwo)
    return(numberone += numbertwo)
end

a = addnumbers(5, 10)
println(a)
sum([5, 10, 10])
array = [5, 10, 15, 20]

# iterative loop
for number in 10:20
    print(number)
end


# while loop
number = 1
while number <= 5
    global number += 1
    print(number)
end

# recursive loop
function fact(n)
    if n == 1
        return(1)
    else
        return n * fact(n-1)
        println(n)
    end
end


fact(5)
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

println(array)

array2 = [30, 40, 50, 60]

for (i, w) in zip(array, array2)
    println(i, w)
end

Hello = "Hello World"

function filterstring(input)
    validchars = ['H', 'W', 'l', 'r', 'o', 'd']
    for character in input
        if character in validchars
            print(character)
        end
    end
end


filterstring(Hello)

a = 5
b = 10

println("The result of $a + $b is $(a+b)")

round(30.5)

round(30.5, RoundUp)

y = 29.95
println(floor(y))
print(ceil(y))

z = -15
println(abs(z))

thestr = "This is some text"
printstyled(thestr)
println()
printstyled(thestr, bold=true)
println()
printstyled(thestr, bold = true, color=:red)


#print("What is your name? >>")
#str = readline()
#println("Hello ", str)

println(isascii("abc"))
println(isascii("αβγ"))
println()
println(isdigit('9'))
println(isdigit('a'))
println()
println(isspace(' '))
println(isspace('\r'))
println(isspace('\n'))
println(isspace('A'))


arr1 = [2,4,6,8,10]
println(arr1 .*2)
println(arr1)

println(sqrt.(arr1))

f(x) = 3x
f.(arr1)

x = 10
y = 20.0
z = "40"
j = "30.0"


c = Char(74)
println(c)

i = Int('J')
println(i)

flt1 = Float32(x)
int1 = Int16(y)
println(flt1, ", ", int1)



a = parse(Int, z)
b = parse(Float64, j)
c = string(y)

println(a)
println(b)
println(c)


x = Char(281)
println(x)

# a = UInt8(x) error 281 too larg to fit in unsigned 8 bit int

x = 5

println(x < 10 ? "x is less than 10" : "x is 10 or greater")

for i in ["Bingo","Bango","Bongo","Irving"]
    println(i)
end

for i in 1:3, j in 2:4
    println(i, ", ", j)
end


i = 1
while i <= 5
    println(i)
    global i += 1
end

teams = ("Giants", "Wizards", "Dragons", "Knights", "Kings")

for (idx, val) in enumerate(teams)
    println(idx, ", ", val)
end

for i in 1:10
    if i % 3 == 0
        continue
    elseif i > 7
        break
    end
    println(i)
end


function foo(a, b, z = 10)
    return (a + b) * z
end
println(foo(2, 3))
println(foo(2, 3, 5))

myfunc3(x, y) = (a = x - 1; 2a + y)

myfunc3(3, 4)


function summit(args...)
    sum = 0
    for a in args
        sum += a
    end
    return sum
end



println(summit(1, 5, 10))
println(summit(2, 4, 6, 8))

arg = -9


try
    global x = sqrt(arg)
    println(x)
catch ex
    println("ERROR")
finally
    println("This section always runs")
end

arr = [1, 2, 3, 4, 5]
println(typeof(arr))

println(length(arr))

println("Element at pos 2 is ", arr[2])

# arrays can hold different types of values
arr2 = ["One", 2, true, 5.0,-4]
println(arr2)
println(typeof(arr2))

println(typeof(arr2))

arr3  = Float64[]
push!(arr3, 1.0, 2.0, 3.0)

arr4 = zeros(4)
println(arr4)

arr4 = ones(4)
println(arr4)

arr5 = fill(5, 7)
println(arr5)

newarr = sort(arr, rev = true)
sort!(newarr)

strval = join(arr, "-")
tup = (1, 3.0, "five", 7, '9')
println(tup[3])
println(tup[2:4])

for i in tup
    println(i)
end

println(3 in tup)
println(4 in tup)

dimtup = ((1, 2), (3, 4), (5, 6))
println(dimtup[3])
println(dimtup[1][2])

namedtup = (a=1, b="two", c='3')
println(namedtup[1])
println(namedtup.a)

set1 = Set()
push!(set1, "a", 2, 5.0)

set2 = Set([1, 2, 3, 4, 2, 5, 7, 1])
#push!(set2, "abc")  -> Error bc not Int64
rainbow = Set{String}()
push!(rainbow, "red", "orange", "yellow", "green", "blue", "indigo", "violet")

println("red" in rainbow)
# rainbow[1] -> Error

primarycolors = Set(["red","yellow","green","blue"])
pastels = Set(["teal","pink","lavender","coral"])

commoncolors = intersect(rainbow, primarycolors)

allcolors = union(rainbow, pastels)

diffcolors = setdiff(rainbow, primarycolors)

d1 = Dict("a" => 1, "b" => 2, "c" => 3)
d2 = Dict{String, String}()
d2["key1"] = "val1"
d_test = Dict("a" => 1, "bobo" => 2.0, 'J' => "three", 3 => true)

println(d1["b"])
d1["d"] = 4
println(d1)

# Test to see if an item is in a dictionary
println(haskey(d1, "e"))
println(haskey(d1, "d"))

delete!(d1, "c")
println(keys(d1))
println(values(d1))

for (key, value) in d1
    println(key, ", ", value)
end

println(rand())

for i in 1:3
    println(rand([1, 2, 3, 4, 5, 6]))
end

for i in 1:3
    println(rand(["a", "b", "c"]))
end

arr = rand(UInt8, 5)

randstring("ABCD") #default length is 8
randstring('a':'z', 6)

vowels = ["A", "E", "I", "O", "U"]
Random.shuffle!(vowels)

Random.seed!(1000)
println(rand())
println(rand())

Random.seed!(1000)
println(rand())
println(rand())

mystr = "Ångström"
teststr = "jμΛIα" # test string with some Greek characters

unicodestr = "AdamAndEve"

println("String length: ", length(teststr))
println("Size of String: ", sizeof(teststr))

println("String length: ", length(mystr))
println("Size of String: ", sizeof(mystr))

println("String length: ", length(unicodestr))
println("Size of String: ", sizeof(unicodestr))

teststr = "Hello " * "World"
teststr = "ABCD"^3
teststr = "Julia programming is awesome"

findnext("Julia", teststr, 0)
occursin("some", teststr)

teststr = lpad("Test String", 20)
println(teststr)
teststr = rpad("Test String", 20, '*')

arr = ["Lions", "Tigers", "Bears"]
teststr  = join(arr, ", ", " and ")
arr = ["Lions","Birds", "Dogs", "Cats", "Tigers", "Bears"]

teststr  = join(arr, ", ", " and ")

print("Current working directory: ")
println(pwd())

print("Current directory contents: ")
println(readdir())

function createfile(filename::String, text::String = "This is some text")
    io = open(filename, "w")
    write(io, text)
    close(io)
end

createfile("mytestfile.txt", "Hello World\n by Lukas Schumi")
createfile("another.txt")

function readfile(filename::String)
    io = open(filename, "r")
    content = read(io, String)
    println(content)
end

readfile("mytestfile.txt")

function appendtoafile(filename::String, text::String)
    io = open(filename, "a")
    write(io, text)
    close(io)
end

appendtoafile("mytestfile.txt", "\nThis text was added")

readfile("mytestfile.txt")

function renamefile()
    mv("mytestfile.txt", "newfilename.txt")
end

renamefile()

# delete a file
# rm("newfilename.txt")


d1 = Date(2018, 12, 22)
dt1 =DateTime(2019, 7, 28)

println("Date and DateTime:")
println(d1, "\n", dt1)

df1 = DateFormat("y-m-d")
d2 = Date("2020-10-10", df1)

println(d2)

df2 = DateFormat("d-m-y")
d2 = Date("13-11-2020", df2)
d3 = Date(2019,12,22)
d4 = Date(2019,7,28)
dt3 = DateTime(2020,1,1)
dt4 = DateTime(2020,12,31)

println(d4<d3)
println(dt4<dt3)
println(d3 - d4)
println(dt4-dt3)

println(Dates.year(d3))
println(Dates.week(d4))
println(Dates.dayofweek(d3))
println(Dates.dayname(d3))
println(Dates.isleapyear(d3))
println(Dates.firstdayofweek(d4))
println(Dates.lastdayofmonth(d4))


struct MyType
    field1::Int
    field2::String
end

x = MyType(10, "ABC")
println(x)
println(x.field1)

mutable struct MyMutableType
    field1::Int
    field2::String
end

x = MyMutableType(10, "ABC")

x.field2 = "DEF"
println(x)

println(isa(x, MyMutableType))
println(isa(4, Int))
println(isa('r', Char))
println(isa(5, Float64))

arr1 = [2, 8, -3, -15, 5, -7, 9, 0, 11]

sort(arr1, by = abs)

arrtup = [(1, 2), (2, 1), (3, 5), (4, 0)]

issorted(arrtup, by = x->x[1])
#1 2 3 4
issorted(arrtup, by = x->x[2])
#2 1 5 0

struct MyRect
    length::Int
    width::Int
end

# want to sort rectangles by area
# no area in struct
# build own sorting function

arr2 = [MyRect(12, 22), MyRect(10, 18),MyRect(7, 12),MyRect(9, 30)]
println(arr2)

function comparearea(rect1::MyRect, rect2::MyRect)
    area1 = rect1.length * rect1.width
    area2 = rect2.length * rect2.width

    return area1 < area2
end

sort(arr2, lt=comparearea)

println(arr2)

sort!(arr2, lt=comparearea)
println(arr2)
