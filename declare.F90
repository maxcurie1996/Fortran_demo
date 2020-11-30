program math
	! comment
	! way to run: ifort declare.F90 -o a.bin && ./a.bin

	implicit none

	!****Start of Declaration section*********
	!1bytes=8bit, 1 bit contain one 0 or 1

	integer:: i,j		!integer, default 4bytes				
	integer, parameter:: a=5			!constant value
	integer, dimension(a) :: array1	!array

	real:: y    						!real number
	real(8)::y1	!real number with 8bytes
	
	complex :: c !Complex number
	
	character(len = 15):: name		!string	with 15 character

	Logical :: Bool  					!Boolean

	!******End of Declaration section*********
	
	i=1
	j=5
	
	


	print *, "1,5=", i, j
	print *, "5^2=", j**2		! 5^2 in Fortran is 5**2
	
	y=real(i)*j/2
	print *, "2.5(4bytes)=",y
	y1=real(I)*j/2	!Fortran is not case sensitive
	print *, "2.5 (8bytes)=", y1
	c=CMPLX(1, 2)	
	print *, "1+2i=", c

	name="String"
	print *, name

	Bool=.True.		! T does not work? 
	print *, Bool
	Bool= 1
	print *, Bool


	print *, "loop the array 1-5"
	do i=1,a
		print *, i
		array1(i)=i**2
	end do 

	print *, "*******i^2*********"
	do i=1,a
		print *, array1(i)
	end do 


end program math