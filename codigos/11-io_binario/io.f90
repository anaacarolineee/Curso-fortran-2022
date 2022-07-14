program acessoDireto
    implicit none
    integer :: io, length
    real,allocatable :: v(:,:), v_aux(:)

    allocate(v(2,2), v_aux(2))
    v(1,:) = [ 1, 2 ]
    v(2,:) = [ 3, 4 ]
	

	inquire(iolength=length) v
	open(newunit=io, file="binary", access="direct",&
	recl=length, status="replace", action="write")
	write(io, rec=1) v
	close(io)
	
	inquire(iolength=length) v (:,2)
	open(newunit=io, file="binary", access="direct", recl=length, status="old", action="read")
	read(io, rec=2) v_aux
	close(io)
	

    print*, v_aux
end program acessoDireto
