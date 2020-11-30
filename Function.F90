program Function
	! comment
	! way to run: ifort Function.F90 -o a.bin && ./a.bin
	
	implicit none

	real:: a,b,c

	a=2
	b=3
	!main fucntion
	c=plus(a,b)
	print *, "a+b=",c

! everythin is pass-by-reference 
! if one changes in the function, it will be changed in the main function

! subroutine does not return anything
! function returns something

	contains
	real function plus(a,b)
		implicit none
		
		real, intent(in):: a,b  !varible is intented for inside of function
		plus=a+b
	end function plus



end program Function