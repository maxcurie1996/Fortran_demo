	program FizzBuzz

	! comment
	! way to run: ifort FizzBuzz.F90 -o a.bin && ./a.bin
	
	implicit none

	integer :: a

	print *, "Enter a number: "
	read *, a

	if (mod(a,3)==0 .and. mod(a,5)==0) then
		print *, "FizzBuzz"
	else if (mod(a,3)==0) then
		print *, "Fizz"
	else if (mod(a,5)==0) then
		print *, "Buzz"
	end if

	end program FizzBuzz