	program random 

	! comment
	! way to run: ifort random.F90 -o a.bin && ./a.bin
	
	implicit none

	real, dimension(100):: r 

	call random_number(r)  ! subroutine for random number 

	print *, r



	end program random 