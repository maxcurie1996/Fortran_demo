

	! comment
	! way to run: ifort Subroutine.F90 -o a.bin && ./a.bin
	! https://en.wikibooks.org/wiki/Fortran/Fortran_procedures_and_functions

	subroutine square_cube(i, isquare, icube)
		integer, intent(in)  :: i              ! intented for input
		integer, intent(out) :: isquare, icube ! intented for output
		isquare = i**2
		icube   = i**3
	end subroutine

program Subroutine
  implicit none
  external square_cube            ! external subroutine
  integer :: isq, icub
  call square_cube(4, isq, icub)
  print *, "i,i^2,i^3=", 4, isq, icub
end program Subroutine


