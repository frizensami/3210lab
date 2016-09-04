all: omp seq

omp: mm-omp.c
	gcc -fopenmp mm-omp.c -o mm1

seq: mm-seq.c
	gcc mm-seq.c -o mmseq
