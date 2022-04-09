    subroutine readints(x,n)
       implicit none
       
       ! variable declaration
       integer, intent(inout), dimension(10000) :: x
       integer, intent(inout) :: n
       character(len = 20) :: input_file

       ! Messages formats    
100    format(I4)
10     format(2X,'Please enter the input filename: ')

       ! Read files names as input and output   
       WRITE(*,10)
       read(*,*) input_file
    
       ! opens the file to read in
       open (unit=99, file=input_file)
   
       ! read all integers from file
       n = 1;
      do while (.TRUE.)
          ! Read data
          read(99,100,end=999)  x(n)
        !   write(*,100) x(n)
          n = n +1
      end do
999    CONTINUE

    end subroutine readints
    
    
    subroutine buildlist(x, n) !, head)
        ! USE ListModule
        IMPLICIT NONE
        integer, intent(inout), dimension(10000) :: x
        integer, intent(inout) :: n
        integer :: i
        ! type( ListElem ), pointer, intent(inout) :: head
        ! type( ListElem ), pointer :: newElem
        ! ALLOCATE( newElem )
        
        100    format(I4)
        
        do i = 1, n-1
        !   newElem%value = x(n)
        !   newElem%next = head 
        !   head = newElem
          
          write(*,100) x(i)
        end do
    end subroutine buildlist
    


    subroutine printlist(x,n)
       implicit none
       
       ! variable declaration
       integer, intent(inout), dimension(10000) :: x
       integer, intent(inout) :: n
       integer :: i
       character(len = 20) :: output_file = 'sortedF.txt'

       ! Messages formats    
100    format(I4)

       ! opens the file to write out
       open (unit=98, file=output_file)
   
       ! write to file
       do i = 1 , n-1
          ! Read data
          write(98,100) x(i)
       end do
999    STOP

    end subroutine printlist
    



