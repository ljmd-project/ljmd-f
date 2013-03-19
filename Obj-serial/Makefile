# -*- Makefile -*-
SHELL=/bin/sh
FC=gfortran
FFLAGS=-Wall -g -std=f95 -O3 -ffast-math -fomit-frame-pointer

# list of source files
SRC= kinds.f90 mdsys.f90 io.f90 physconst.f90 utils.f90 cell.f90 force.f90 move.f90 ljmd.f90
VPATH=../src
OBJ=$(SRC:%.f90=%.o)
MOD=$(SRC:%.f90=%.mod)

default: ../ljmd-serial.x

clean:
	rm -f *.mod *.o ../ljmd-serial.x
	rm -f *.mod *.o Obj-serial

# linker rule
../ljmd-serial.x: $(OBJ) 
	$(FC) -o $@ $(FFLAGS) $^

# compilation pattern rule for objects
%.o: %.f90
	$(FC) -c $(FFLAGS) $<

# dependencies
ljmd.o: ljmd.f90
