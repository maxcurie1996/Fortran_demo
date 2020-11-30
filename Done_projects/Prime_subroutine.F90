program Prime_subroutine

	! comment
	! way to run: ifort Prime_subroutine.F90 -o a.bin && ./a.bin
	
	implicit none

	integer :: i,output,is_prime
	
	do i=2,99,1    ! 2 to 99 with step of 1, includes 99
		call prime(is_prime,i)
		if (is_prime==1) then
			print *, i
		end if
	end do
end program Prime_subroutine



	subroutine prime(is_prime,n)  !function that judge if it is a prime or not, 1 
		implicit none
		integer:: n, j, judge,is_prime

		judge=0

		do j=2,n-1 
			if (mod(n,j)==0) then
				judge=judge+1
				exit  ! exit if it is not prime
			end if 
		end do

		if (judge==0) then
			! print *, n, "-***********************"
			is_prime=1   !it is prime number
		else 
			is_prime=0   !it is prime number
		end if
			
	end subroutine prime

