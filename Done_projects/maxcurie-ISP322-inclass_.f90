	program Prime

	! comment
	! way to run: ifort Prime.F90 -o a.bin && ./a.bin
	
	implicit none

	integer :: i, j, temp, judge


	do i=2,99,1 ! 0 to 10 with step of 2, includes 10
		judge=0

		do j=2,i-1 
			if (mod(i,j)==0) then
				judge=judge+1
				exit  ! exit if it is not prime
			end if 
		end do


		if (judge==0) then
			print *, i
		end if
		
	end do

	end program Prime
