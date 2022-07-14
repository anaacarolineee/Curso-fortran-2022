program acessoDireto
    implicit none
    integer :: io, length, m, n
    real,allocatable :: v(:,:), v_out(:,:)

	m=2
	n=2
    allocate(v(m,n))
	
	
    v(1,:) = [ 1, 2 ]
    v(2,:) = [ 3, 4 ]

	open(newunit=io, file="binary", access="stream",&
	status="replace", action="write")
	! escrever n
	write(io) n
	! m
	write(io) m
	write(io) v
	close(io)
	
	open(newunit=io, file="binary", access="stream",&
	status="old", action="read")
	! ler o n
	read(io) n
	! ler o m
	read(io) m
	! alocar v_out m x n
	allocate(v_out(m,n))
	! ler v_out
	read(io) v_out
	close(io)
	
    print*, v_out(1,:)
    print*, v_out(2,:)
end program acessoDireto
