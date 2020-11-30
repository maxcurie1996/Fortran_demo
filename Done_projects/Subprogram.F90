	program Subprogram

	! comment
	! way to run: ifort Subprogram.F90 -o a.bin && ./a.bin
	
	implicit none

	integer :: i

! everythin is pass-by-reference 
! if one changes in the function, it will be changed in the main function

	contains

	subroutine function1[i,j]
		implicit none
		print *, "Hello world", i, j
	end subroutine function1

! subroutine does not return anything
! function returns something

	real function avg_calc(avg,n,x)
		implicit none
		integer intene(in) ::n,i  ! with intention of 

		real, dimension(n):: x
		real:: sum
		sum=0
		do i =1,n
			sum=sum+x(i)
		end do		

	avg_calc=sum/real(n)
	end function avg_calc


	! intene(in)
	! intene(out)


	end program Subprogram