! kinds module
! insert documentation here

MODULE kinds
  IMPLICIT NONE
  INTEGER, PARAMETER :: dbl = selected_real_kind(14,200)  ! double precision floating point
  INTEGER, PARAMETER :: sgl = selected_real_kind(6,30)    ! single precision floating point
  INTEGER, PARAMETER :: sln = 200                         ! length of I/O input line
  PRIVATE
  PUBLIC :: sgl, dbl, sln
END MODULE kinds
