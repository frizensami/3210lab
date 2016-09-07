MATRIXSIZE=1000
#echo "Performance for MMSEQ (Sequential)"
#perf stat -e cache-references -e cache-misses -e cycles -e instructions -- ./mmseq $MATRIXSIZE
echo "======== Performance for MM1 (Parallel) - INSTRUCTIONS ============="
for NUMTHREADS in 1 2 4 8 16 32
do
  perf stat --log-fd 1 -e cycles -e instructions -- ./mm1 $MATRIXSIZE $NUMTHREADS
  
done


