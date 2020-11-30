	program math
	! comment
	! way to run: ifort read.F90 -o a.bin && ./a.bin

	implicit none

	!****Start of Declaration section*********

	integer:: year, day, i,j	!integer
	integer:: int_4bit			!default 4bytes
	integer(kind=4):: int_4bit_2
	integer(8):: int_8bit
	real:: x,y    				!real number
	real, parameter:: a=42		!constant value
	real(8)::y1

	!******End of Declaration section*********
	
	i=1
	j=5
	x=real(I)/j		!Fortran is not case sensitive
	y=real(i)*j/2
	y1=real(i)*j/2

	print *, i, j
	print *, x, y
	
	print *, y1_8

	print *, j**2

	end program math