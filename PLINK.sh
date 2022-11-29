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


## convert vcf files into bfiles   

export PATH=/opt/ohpc/Taiwania3/pkg/biology/PLINK/PLINK_v1.90:$PATH
export PATH=/opt/ohpc/Taiwania3/pkg/biology/PLINK2/PLINK_v2.00a3LM_AVX2_16Aug:$PATH
file=./20221014_25DF_164TWB_TW3_PASS.vcf
plink2 --vcf ${file} --make-bed --chr 1-22,23,24,25,26 --max-alleles 2 --keep-allele-order --out [bfile prefix]


## filter bfiles
plink --bfile [bfile prefix] --keep-allele-order --max-maf 0.05 --geno 0.2 --split-x 2781479 155701383 'no-fail' --double-id --allow-extra-chr  -make-bed --out [output prefix]
