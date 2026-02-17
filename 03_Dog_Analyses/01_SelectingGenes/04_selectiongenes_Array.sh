#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --array=0-10,50
#SBATCH --output=/home/ak308/Bio310/output/vcfselect.out 
#SBATCH --error=/home/ak308/Bio310/output/vcfselect.err

# Grab the specific gene from the large VCF

module load GCC/13.3.0
module load VCFtools/0.1.17

VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vcf.gz
BEDIN=/scratch/ak308/bedfiles/KRT71.bed
OUT=/scratch/ak308/Bio310_Dog/Results/KRT71_vcf

vcftools --gzvcf ${VCF} --bed  ${BEDIN} --recode --recode-INFO-all --out ${OUT}

