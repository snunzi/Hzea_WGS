#!/bin/sh

#Run script as follows: NGS_QC_Toolkit_Hzea.sh >> NGS_log.txt

START=$(date +%s.%N)

perl /home/ubuntu/Volumes/Programs/NGSQCToolkit_v2.3.3/QC/IlluQC.pl -pe  B1_S1_R1_001.fastq.gz   B1_S1_R2_001.fastq.gz   2 A -pe C1_S2_R1_001.fastq.gz   C1_S2_R2_001.fastq.gz   2 A -pe D1_S3_R1_001.fastq.gz   D1_S3_R2_001.fastq.gz   2 A -pe D2_S6_R1_001.fastq.gz   D2_S6_R2_001.fastq.gz   2 A -pe D3_S9_R1_001.fastq.gz   D3_S9_R2_001.fastq.gz   2 A -pe E1_S4_R1_001.fastq.gz   E1_S4_R2_001.fastq.gz   2 A -pe E3_S10_R1_001.fastq.gz  E3_S10_R2_001.fastq.gz  2 A -pe F2_S7_R1_001.fastq.gz   F2_S7_R2_001.fastq.gz   2 A -pe G2_S8_R1_001.fastq.gz   G2_S8_R2_001.fastq.gz   2 A -pe H1_S5_R1_001.fastq.gz   H1_S5_R2_001.fastq.gz   2 A -l 70 -s 20 -z g -onlyStat

END=$(date +%s.%N)
DIFF=$(echo "$END - $START" | bc)
echo -e Time taken for this iteration is: $DIFF 

command; echo "Process done" | mail -s "Process done with RunTime $DIFF" schyler.nunziata@uky.edu

