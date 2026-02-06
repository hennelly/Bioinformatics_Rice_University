#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/lh106/Rice/Dog_Selection/slurmout/plink.out 
#SBATCH --error=/home/lh106/Rice/Dog_Selection/slurmout/plink.err

VCF=/scratch/lh106/results_chrX/chrX_TKTL1.recode.vcf
OUTBED=/scratch/lh106/results_chrX/chrX_TKTL1.bed
OUTPLINK=/scratch/lh106/results_chrX/chrX_TKTL1.plink
OUTVCF_final=/scratch/lh106/results_chrX/chrX_TKTL1_finalcoded

/home/lh106/software/plink --vcf ${VCF} --make-bed --const-fid --dog --out ${OUTBED} #to sort the chromosomes
/home/lh106/software/plink --bfile ${OUTBED} --recode --out ${OUTPLINK} --const-fid --dog
/home/lh106/software/plink --file  ${OUTPLINK} --recode vcf --out ${OUTVCF_final} --const-fid --dog




