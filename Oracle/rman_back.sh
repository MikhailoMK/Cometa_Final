#!/bin/bash

export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=$ORACLE_BASE/product/19.0.0/dbhome_1
export ORACLE_SID=final
export PATH=$ORACLE_HOME/bin:$PATH

rman target / log='/home/oracle/RMAN_BACKUP/backup.log' << EOF
run{
allocate channel ch1 device type disk;
allocate channel ch2 device type disk;
backup database plus archivelog format '/home/oracle/RMAN_BACKUP/%d_%s_%U.bkp';
release channel ch1;
release channel ch2;
}
exit
EOF
