program main
    print *, "[no args] tester()   :", tester()    ! yields: 0.0
    print *, "[   args] tester(1.0):", tester(1.0) ! yields: 1.0


contains

    ! Escreva função tester aqui
	real function tester(a)
		real, intent (in), optional :: a
	 	if (present(a)) then
	 		tester = a
		else
			tester = 0.0
		end if
	end function tester

end program
