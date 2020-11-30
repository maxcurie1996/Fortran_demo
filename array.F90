program array

	! comment
	! way to run: ifort array.F90 -o a.bin && ./a.bin
	
	implicit none

	integer :: i,j,length,ierror
	integer, dimension(5) :: array1					!1d array
	integer, dimension(5,5) :: array2,array3		!2d array
	integer, dimension(:), allocatable :: array_d	!dynamic array
	real, dimension(20):: r 						!random array

	print *, "*********1d array*******"
	do i=1,5
		array1(i)=i**2
		print *, i, array1(i)
	end do 

	print *, "*********2d array*******"
	! Fortran is column major, so it is better to it the following way

	do j=1,5
		do i=1,5
			array2(i,j)=i*j
			print *, i, j, array2(i,j)
		end do 
	end do

	print *, "*********dynamic array*******"
	length=10
	allocate(array_d(length), stat=ierror) 			! define the length of the dynamic array
	if (ierror /= 0) then		! error status
		stop 'error array_d' 
	end if        	
	                            

	do i=1,length,1
		array_d(i)=i**2
		print *, array_d(i)
	end do
	deallocate(array_d) 		! release the memory 

	print *, "********Array slicing***********"
	! https://docs.oracle.com/cd/E19205-01/819-5257/blagu/index.html
	print *, "array1(1:4): ", array1(1:4)
	print *, "array2(row 1 and 2, all column): ", array2(1:2,:)
	print *, "array2(row 1 and 2, column 2 and 3): ", array2(1:2,2:3)


	print *, "**********Array manipulation*********" !http://www.mathcs.emory.edu/~cheung/Courses/561/Syllabus/6-Fortran/array1a.html
	!(/i,j/)=shape(array2)
	print *, "Shape of array2: ", shape(array2)
	i=size(array2)
	print *, "Size of array2: ",  i	!5(row)*5(col)=25(size)



	!Array manipulation https://web.stanford.edu/class/me200c/tutorial_90/07_arrays.html
	
	print *, "Multiplication of two array"
	array3=Matmul(array2, array2)	!Multiplication of 2 arrays
	print *, "(array2 . array2) (i,j)"
	do j=1,5
		do i=1,5
			print *, "(", i, "," ,j, ")", array3(i,j)
		end do 
	end do

	print *, "Product of all the elements in the array"
	i=Product(array1)	!the product of the elements of A
	print *, "Pi_{i} array(i)=", i
	

	print *, "Dot product of two array"
	i=Dot_Product(array1, array1) !dot product of two array, has to be 1d array
	print *, "(array1 . array1) = sum_{i} array1(i)*array1(i) =", i


	print *, "sum: ", sum(array1)	!sum of all the elements
	call random_number(r)  ! subroutine for random number 
	print *, "********20 random numbers***********"
	print *, r
	print *, "Maximum Value: ", MaxVal(r)		!Maximum Value of the array
	print *, "Index of Max: ", MaxLoc(r)		!Index where the maximum value of the array is located



end program array