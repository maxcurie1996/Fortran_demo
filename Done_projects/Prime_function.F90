program Prime_function

!Created by Max Curie 11/17/2020
!calculate prime number from 1 to 100 using functions

	! comment
	! way to run: ifort Prime_function.F90 -o a.bin && ./a.bin
	
	implicit none

	integer :: i,j
	

	print *, "***************************"
	print *, "***************************"
	print *, "***************************"

	print*, "1 to 100 using NextPrime"

	i=1

	do  ! 2 to 99 with step of 1, includes 99
		j = NextPrime(i)

		if (j>=100) then 
			exit
		else
			print *, j
		end if

		i=j

	end do

	print *, "***************************"
	print *, "***************************"
	print *, "***************************"

	print *, "100 to 1 using PreviousPrime"

	i=100

	do  ! 2 to 99 with step of 1, includes 99
		j = PreviousPrime(i)

		if (j<2) then 
			exit
		else if (j==2) then 
			print *, j
			exit
		else
			print *, j
		end if

		i=j

	end do



contains
!contains allows to writing function within the same script

	logical function IsPrime(n)  !function that judge if it is a prime or not, 1 
		integer, intent(in):: n
		integer:: j, judge

		judge=0

		do j=2,n-1 
			if (mod(n,j)==0) then
				judge=judge+1
				exit  ! exit if it is not prime
			end if 
		end do

		if (judge==0) then
			! print *, n, "-***********************"
			IsPrime=.true.   !it is prime number
		else 
			IsPrime=.false.   !it is prime number
		end if
	
	end function IsPrime


	integer function NextPrime(n)  !function that return the next prime number
		integer, intent(in)::n
		integer :: i

		i=n

		do  ! 0 to 10 with step of 2, includes 10
			i=i+1
			if (IsPrime(i)==.true.) then
				NextPrime=i
				exit
			end if
		end do
	end function NextPrime


	integer function PreviousPrime(n)  !function that return the next prime number
		integer, intent(in)::n
		integer :: i 

		i=n

		do  ! 0 to 10 with step of 2, includes 10

			if (i<=2) then 
				PreviousPrime=2
				exit
			end if 

			i=i-1

			if (IsPrime(i)==.true.) then
				PreviousPrime=i
				exit
			end if
		end do
	end function PreviousPrime

end program Prime_function