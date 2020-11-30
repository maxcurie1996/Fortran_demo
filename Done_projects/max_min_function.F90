program max_min

	! comment
	! way to run: ifort max_min_function.F90 -o a.bin && ./a.bin
	
	implicit none

	integer :: i
	real, dimension(100) :: r

	call random_number(r)  ! subroutine for random number 

	print *, "r="
	print *, r
	print *, "argmax=", argmax(r, len)
	print *, "max=", max(r, len)


	contains
		integer function argmax(r, len)
			implicit none
			integer :: i, index0, len
			real dimension(len):: r
			real :: temp_max

			i=1
			temp_max=r(i)
			index0=i

			do i=1,len
				if (r(i)>temp_max) then
					temp_max=r(i)
					index0=i
				end if
			end do

			argmax=index0
		end function argmax

		real function max(r, len)
			implicit none
			integer :: len
			real dimension(len):: r

			max=r(argmax(r, len))
		end function max


end program max_min