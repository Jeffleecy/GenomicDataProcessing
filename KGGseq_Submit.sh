#!/usr/bin/sh
#SBATCH -A MST109178        # Account name/project number
#SBATCH -J SAMPLE_NAME         # Job name
#SBATCH -p ngs48G           # Partition Name 
#SBATCH -c 14               # Core numbers
#SBATCH --mem=46g           # Memory size
#SBATCH -o out.log          # Path to the standard output file 
#SBATCH -e err.log          # Path to the standard error ouput file
#SBATCH --mail-user=@gmail.com    # email
#SBATCH --mail-type=FAIL              # When to send an email = NONE, BEGIN, END, FAIL, REQUEUE, or ALL

java=/usr/bin/java
txt=REPO/KGGSeq/HG19/Indiv_Profile/subject_ID/KGGSeq_DATE_para.disease_subject_ID.txt
kggseq10=/staging/reserve/paylong_ntu/AI_SHARE/software/KGGSeq/20210901/kggseqhg19/kggseq.jar
$java -jar -Xmx46g $kggseq10 $txt
