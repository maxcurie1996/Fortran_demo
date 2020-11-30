	program Loop

	! comment
	! way to run: ifort Loop.F90 -o a.bin && ./a.bin
	
	implicit none

	integer :: i

	do i=0,10,2 ! 0 to 10 with step of 2, includes 10
		print *, i
	end do

    i=0
    print*,"**********"
	do  ! 0 to 10 with step of 2, includes 10
		i=i+3
		
		if (i == 3) then
			cycle	!skip this 
		else if (i >=15) then
			exit
		end if

		print *, i

	end do


	end program Loop