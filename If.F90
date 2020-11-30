	program If

	! comment
	! way to run: ifort If.F90 -o a.bin && ./a.bin
	
	implicit none
	integer :: i,j

	i=1
	j=1

	if (i<0) then
		print *, "i is negative" 
	else if (i==0) then				!equal
		print *, "i is 0" 
	else if (j/=1) then				!not equal
		print *, "j is not 1"
	else if (i==1 .and. j==1) then	!not equal
		print *, "i==1 and j==1"
	else if (i==2 .or. j==2) then	!not equal
		print *, "i==2 .or. j==2"
	else
		print *, "Other condition"
	end if 


	end program If