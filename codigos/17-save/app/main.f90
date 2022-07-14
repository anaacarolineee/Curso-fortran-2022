program main
    implicit none

    call f()  ! yields: 1
    call f()  ! yields: 2
    call f()  ! yields: 3

contains

    ! Escrever subrotina com argumento save para um inteiro e o incrementa a cada call da subrotina, imprimindo na tela o resultado
	subroutine f()
		implicit none
		integer, save :: i = 0
		
		i = i + 1
		print *, "value i:", i
	end subroutine f
	
end program main
