	program Prime

	! comment
	! way to run: ifort Prime.F90 -o a.bin && ./a.bin
	
	implicit none

	! from: https://www.tutorialspoint.com/fortran/fortran_dynamic_arrays.htm

	integer, dimension (:), allocatable :: Prime_list   
	integer :: count, i, j, judge

	call AddToList(Prime_list, 2)
	count=1

	do i=0,100,2 ! 0 to 10 with step of 2, includes 10
		judge=0

		do j=0,count
			if ( mod( i,Prime_list(j) ) ) then
				judge=judge+1     
			end if 
		end do 

		if (judge==0) then   ! judge==0 if _i_ is prime number
			print *, i
			call AddToList(Prime_list, i) ! add i to the prime_list
			count=count+1    ! length of the prime_list +1
		end if 
		
	end do



	end program Prime