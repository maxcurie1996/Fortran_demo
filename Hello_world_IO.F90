program hello  ! start of the program

	! Fortran does not have block comment

	! comment
	! way to run: ifort Hello_world_IO.F90 -o a.bin && ./a.bin
	
	implicit none

	! about string: https://www.tutorialspoint.com/fortran/fortran_strings.htm

	!****Start of Declaration section*********
	character(len = 15):: name	

	!******End of Declaration section*********

	print *, "Hello World, what is your name? "

	read *, name

	print*, "Hello, ", name, "!"

end program Hello  ! end of the program