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

export PATH=/opt/ohpc/Taiwania3/pkg/biology/BCFtools/bcftools_v1.13/bin:$PATH
file=/staging/biology/u1272905/Jeff_Variants_2022/SAIGE_GENE/splitVCF/20221014_55WGS_TWBHQ164_dragen_graph38_JC.hard-filtered.vcf.gz
sample=/staging/biology/u1272905/Jeff_Variants_2022/SAIGE_GENE/splitVCF/25DF_proband_164TWB.list
bcftools view -S $sample  $file > filtered_25DF_164TWB_TW3.vcf
