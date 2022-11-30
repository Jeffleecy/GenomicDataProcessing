# Genomic data processing

## Description 
 This repository includes the codes used in:
1. filtering variants recorded in VCF files or binary file sets (bfiles) by multiple parameters using [KGGseq](http://pmglab.top/kggseq/), [PLINK1.9](https://www.cog-genomics.org/plink/), and [PLINK2.0](https://www.cog-genomics.org/plink/2.0/).
2. converting a genomic bed file into a interval list
3. splitting a VCF file based on the samples of interest 
 
## Dependencies
These codes are based on shell scripts and are executed in the Linux environment.
 
## Scripts
#### KGGseq.txt
   - Input - a VCF or PED file of interest
#### KGGseq_Submit.sh
#### PLINK_VCF_bfiles.sh
#### PICARD_BedToInterval.sh
#### bcftools_splitVCF.sh

