	program Loop

	! comment
	! way to run: ifort Loop.F90 -o a.bin && ./a.bin
	
	implicit none

	integer :: i

	do i=0,10,2 ! 0 to 10 with step of 2, includes 10
		print *, i
	end do

    i=0

	do  ! 0 to 10 with step of 2, includes 10
		i=i+3
		print *, i
		if (i >=9) then
			exit
		end if
	end do

	! print *, "Enter two numbers: "
	! read *, a



	end program Loop