#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/lh106/Rice/Dog_Selection/slurmout/plink.out 
#SBATCH --error=/home/lh106/Rice/Dog_Selection/slurmout/plink.err

module load GCC/13.3.0
module load VCFtools/0.1.17

VCF=/scratch/yourID/Dog_Selection/Results/KRT71_vcf.recode.vcf
DIR=/scratch/yourID/Dog_Selection/Results

vcftools --vcf ${VCF} \
--minQ 30 \
--minDP 3 \
--max-missing 0.8 \
--recode \
--recode-INFO-all \
--out ${DIR}/KRT71_filtered
