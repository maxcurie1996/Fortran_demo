program array

	! comment
	! way to run: ifort array.F90 -o a.bin && ./a.bin
	
	implicit none

	integer :: i,j
	integer, dimension(5) :: array1
	integer, dimension(5,5) :: array2

	print *, "*******1d array*********"
	do i=1,5
		print *, i
		array1(i)=i**2
	end do 

	print *, "*******2d array*********"
	! Fortran is column major, so it is better to it the following way
	do j=1,5
		do i=1,5
			print *, i,j
			array2(i,j)=i*j
		end do 
	end do






end program array