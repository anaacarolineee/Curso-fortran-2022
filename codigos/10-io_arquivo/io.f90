program aprendendoIO
    implicit none
    integer :: io
    real,allocatable :: v(:,:)

    allocate(v(2,2))
    v(1,:) = [ 1, 2 ]
    v(2,:) = [ 3, 4 ]

    open(newunit=io, file="log.txt", &
      & status="replace", action="write")
    write(io, *) v(:,:)
    close(io)
	
	open(newunit=io, file="log.txt", status="old", action="read")
	read(io, *) v(:,:)
	close(io)
	print*, v(1,:)
	print*, v(2,:)

	
end program aprendendoIO
