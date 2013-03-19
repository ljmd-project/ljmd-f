# -*- Makefile -*-
SHELL=/bin/sh
# compiler flags
FC=gfortran
OPT=-O3 -ffast-math -fomit-frame-pointer
FFLAGS=-Wall -g -std=f95 $(OPT)
PARALLEL=-fopenmp

default: serial # parallel

serial parallel:
	$(MAKE) -C Obj-$@

run: clean serial
	$(MAKE) -C examples

clean:
	$(MAKE) -C Obj-serial clean
	$(MAKE) -C Obj-parallel clean

