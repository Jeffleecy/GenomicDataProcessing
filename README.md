# Genomic data processing

## Description 
 This repository includes the codes used in:
1. filtering variants recorded in VCF files or binary file sets (bfiles) by multiple parameters using [KGGseq](http://pmglab.top/kggseq/), [PLINK1.9](https://www.cog-genomics.org/plink/), and [PLINK2.0](https://www.cog-genomics.org/plink/2.0/).
2. converting a genomic bed file into a interval list
3. splitting a VCF file based on the samples of interest using [bcftools](https://samtools.github.io/bcftools/bcftools.html)
 
## Dependencies
These codes are based on shell scripts and are executed in the Linux environment.
 
## Scripts
#### KGGseq.txt
   - Input: a VCF or PED file 
   - Function: filter the variants in the input file according to parameters such as allele frequency, located genes, or VQSR tranches
   - Output: a VCF file with variants of interest
   
#### KGGseq_Submit.sh
   - Function: initiate the KGGseq software and perform genomic data processing according to the parameters in "KGGseq.txt"
  
#### PLINK_VCF_bfiles.sh
 - Input: a VCF file
 - Functions:
   - converting vcf files into bfiles  
   - filtering the variants in bfiles according to parameters such as maximum allele count, allele frequency,  or located chromosomes
 - Output: .bed/.bim/.fam files (bfiles)

#### PICARD_BedToInterval.sh
- Function: convert a genomic bed file into a interval list

#### bcftools_splitVCF.sh
- Function: split a VCF file based on the samples of interest using bcftools
