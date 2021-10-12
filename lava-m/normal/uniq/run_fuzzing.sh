if [ -z "$1" ]
  then
    echo "argument required for initial seed (Example ./run_fuzzing.sh 123)"
    exit	
fi
#-V 43200 (12 hrs) and terminate. 
afl-fuzz -T "Uniq" -V 43200 -s $1 -i in/ -o out/ -- ./uniq @@  
