if [ -z "$1" ]
  then
    echo "argument required for initial seed (Example ./run_fuzzing.sh 123)"
    exit	
fi
#-V 43200 (12 hrs) and terminate. 
afl-fuzz -T "Base64 Coverage Criteria" -V 43200 -s $1 -i in/ -o out/ -- ./base64_cov_fuzz -d @@  
