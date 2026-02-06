#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/yourname/Rice/Dog_Selection/slurmout/vcfselect.out 
#SBATCH --error=/home/yourname/Rice/Dog_Selection/slurmout/vcfselect.err

# Grab the specific gene from the large VCF

module load GCC/13.3.0
module load VCFtools/0.1.17

VCF=/storage/hpc/work/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vcf.gz
BEDIN=/scratch/yourID/bedfiles/TKTL1.bed
OUT=/scratch/lh106/results_chrX/chrX_TKTL1

vcftools --gzvcf ${VCF} --bed  ${BEDIN} --recode --recode-INFO-all --out ${OUT}

#########################
#How to make a bed file #
#########################

/scratch/yourID/ 
mkdir bedfiles
touch KRT71.bed
vim KRT71.bed

chrom   chromStart      chromEnd
chr27    2536324       2545670

#Copy and paste the gene location with tabs between 



