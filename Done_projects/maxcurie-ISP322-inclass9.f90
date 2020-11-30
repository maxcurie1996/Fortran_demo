	program class9
	! comment
	! way to run: ifort class9.F90 -o a.bin && ./a.bin

	implicit none

	!****Start of Declaration section*********

	character(len=20):: name   !String with max length of 20

	real, parameter:: pi=3.14159265359
	real:: a,b,c,V
	real:: d

	!******End of Declaration section*********
	
	print *,'Enter your name: '
	read *, name
	print *, 'Hello, ', name

	print *,'Enter a: '
	read *, a

	print *,'Enter b: '
	read *, b

	print *,'Enter c: '
	read *, c


	V=4./3.*pi*a**3.
	print *, 'Volume of sphere with radius ', a, ' is ',V
	print *, ' '
	print *, ' '

	V=a*b*c
	print *, 'Volume of rectangular prism with'
	print *, 'Length=', a
	print *, 'Height=', b
	print *, 'Width=', c
	print *, ' is ', V
	print *, ' '
	print *, ' '

	d=a*b*c/7.
	print *, 'int(a*b*c)/7=', int(d)


	end program class9