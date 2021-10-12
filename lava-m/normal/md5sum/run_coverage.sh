touch union_cov.dat # Create initial empty file.
mkdir seeds
i=0
inotifywait -m -e create seeds/ | 
  while read path action file; do
 	echo Executing on input seeds/$file
 	pin -t 	CAnnotateCov.so -- ./$1_cov seeds/$file # This will generate coverage.dat file
  	#rm seeds/$file # Remove the file
  	python3 merge_cov.py # Taking Union of union_cov.dat and coverage.dat
  	((i=i+1))
  	echo $i > noSeeds.txt # Record number of seeds.
  done

