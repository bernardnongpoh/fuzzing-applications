import csv

setData = set()
newCoverage=False
union_data=list()

with open('union_cov.dat', newline='') as f:
    reader = csv.reader(f)
    union_data = list(reader)
    for x in range(len(union_data)): 
    	setData.add(union_data[x][0]+union_data[x][1])	     	

with open('coverage.dat', newline='') as f:
    reader = csv.reader(f)
    cov_data = list(reader)
    for x in range(len(cov_data)):
    	key=cov_data[x][0]+cov_data[x][1]
    	if key not in setData:
    		union_data.append(cov_data[x])
    		newCoverage=True

if newCoverage:
	with open('union_cov.dat', 'w') as f: 
	    write = csv.writer(f) 
	    write.writerows(union_data) 
    		







