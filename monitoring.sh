#!/bin/bash

wall "  
        #Architecture: $(uname -a)
        #CPU psychical: $(nproc)
        #vCPU: $(cat /proc/cpuinfo | grep processor | wc -l)
        #Memory Usage: $(free -m | grep Mem | awk '{printf("%s/%sMB (%.2f%%)", $3, $2, $3/$2*100)}')
        #Disk Usage: $(df -h --total | grep total | awk '{printf("%.1f/%.fGb (%s)",bash  $3, $2, $5)}')
        #CPU load: $(mpstat | grep all | awk '{printf("%.1f%%", 100-$13)}')
        #Last boot: $(who -b | awk '{print $3 " " $4}')
        #LVM user:  $(lsblk | grep lvm | wc -l | awk '{if ($1) (print "yes"; exit;) else (print "no")}')
        #Connexions TCP : $(netstat -an | grep ESTABLISHED | wc -l) ESTABLISHED
        #User log:  $(who | cut -d " " -f 1 | sort -u | wc -l)
        #Network:  IP $(hostname -I) $(ip addr | grep ether | awk '{print "(" $2 ")"}')
        #Sudo:  $(journalctl _COMM=sudo | grep COMMAND | wc -l) cmd
        "