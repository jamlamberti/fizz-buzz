' Written for Liberty Basic
cls
for i = 1 to 100
    if int(i/15) = (i/15) then
        print "FizzBuzz"
    else
        if int(i/5) = (i/5) then
            print "Buzz"
        else
            if int(i/3) = (i/3) then
                print "Fizz"
            else
                print i
            end if
        end if
    end if
next i
