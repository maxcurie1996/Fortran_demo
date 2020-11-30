	program Divisor

	! comment
	! way to run: ifort Divisor.F90 -o a.bin && ./a.bin
	
	implicit none

	integer :: a, b

	print *, "Enter two numbers: "
	read *, a
	read *, b

	if (mod(a,b)==0) then
		print *, b, " is a divisor of ", a
	else 
		print *, b, " is NOT a divisor of ", a
	end if

	end program Divisor