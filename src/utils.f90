MODULE utils
  USE kinds
  IMPLICIT NONE

  PRIVATE
  PUBLIC :: pbc

CONTAINS
   
! helper function: apply minimum image convention 
  FUNCTION pbc(x, boxby2, box)
    REAL(kind=dbl), INTENT(IN)  :: x, boxby2, box
    REAL(kind=dbl) :: pbc

    pbc = x
    DO WHILE(pbc > boxby2)
       pbc = pbc - box
    END DO
    DO WHILE(pbc < -boxby2)
       pbc = pbc + box
    END DO
  END FUNCTION pbc

  ! compute kinetic energy
  SUBROUTINE getekin
    USE kinds
    USE mdsys, ONLY: natoms, mass, temp, ekin, vel
    USE physconst
    IMPLICIT NONE

    INTEGER :: i

    ekin = 0.0_dbl
    DO i=1,natoms
       ekin = ekin + 0.5_dbl * mvsq2e * mass * dot_product(vel(i,:),vel(i,:))
    END DO
    temp = 2.0_dbl * ekin/(3.0_dbl*DBLE(natoms-1))/kboltz
  END SUBROUTINE getekin


END MODULE utils

