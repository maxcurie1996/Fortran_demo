program array2d

	! comment
	! way to run: ifort array2d.F90 -o a.bin && ./a.bin
	
	implicit none

	integer :: i,j
	integer, dimension(5,5) :: array2


	do i=1,5
		do j=1,5
			print *, i,j
			array2(i,j)=i*j
		end do 
	end do 

	! Fortran is column major, so it is better to it the following way

	do j=1,5
		do i=1,5
			print *, i,j
			array2(i,j)=i*j
		end do 
	end do

	print *, "****************"
	do i=1,5
		do j=1,5
			print *, array2(i,j)
		end do 
	end do 

	print *, array2





end program array2d