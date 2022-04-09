    ! MODULE ListModule
    !     TYPE ListElem
    !         REAL                    :: value;
    !         TYPE(ListElem), POINTER :: next;
    !     END TYPE ListElem
    ! END MODULE
    
    Program mrgsort
    ! USE ListModule
    
    implicit none
    
    ! variable declaration     
    integer, dimension(10000) :: x
    integer :: n
    ! type( ListElem ), pointer :: head
    
    ! Messages formats  
100    format(I4)    

   
    ! Read integers from file
    call readints(x, n)
    
    ! create a LinkedList using pointers
    ! NULLIFY( head )   ! Empty list
    call buildlist(x, n) !, head)
    
    ! Print un sorted list 
    call printlist(x,n)
    
    ! Sorting a LinkedList using MergeSort
    ! call mergesort(p)
    
    ! writes to file
    ! call printlist(p)

    End Program mrgsort
    