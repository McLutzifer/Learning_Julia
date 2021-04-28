using Printf
using Statistics

s = 0
s = "Dog"    # no problem changing variable types
println(s)


##  can't do that ERROR
function chengeNum(args)
    x::Int8 = 10
    x = "Dog"
end

canDrive = true
c = 'A'

c2 = Char(120)  # UTF-8 Unicode
println(c2)

i1 = UInt8(trunc(3.14))
println(i1)

f1 = parse(Float64, "1")
println(f1)

i2 = parse(Int8, "1")
println(i2)
