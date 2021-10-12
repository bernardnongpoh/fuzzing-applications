# Run Fuzzing in a different terminal

#Run Monitor on the queue, on create cp to seeds/

#Copy the initial data into seeds/ 
cp out/default/queue/* seeds/

inotifywait -m -e create out/default/queue | 
  while read path action file; do
 	# Copy the Seed to seeds/
 	cp out/default/queue/$file seeds/
 	# Run
 	
 	echo $file
 	
  done
  
  echo "Done"
