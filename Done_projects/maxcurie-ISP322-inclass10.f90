	program Loop

	! comment
	! way to run: ifort Search.F90 -o a.bin && ./a.bin
	
	implicit none

	integer :: u,v,w

	do u=0,100,1 
		do v=0,100,1 
			if (u>=v) then  ! omit duplicates of solutions
				do w=0,100,1 
					if ( u**2+v**2==w**2 ) then
						print *, "u,v,w = ", u, "," , v, "," , w
					end if
				end do
			end if
		end do
	end do


	! print *, "Enter two numbers: "
	! read *, a



	end program Loop