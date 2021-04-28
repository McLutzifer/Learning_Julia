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
