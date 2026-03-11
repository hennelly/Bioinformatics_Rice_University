#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/lh106/Rice/Dog_Selection/slurmout/vcfselect.out 
#SBATCH --error=/home/lh106/Rice/Dog_Selection/slurmout/vcfselect.err

# Grab the specific gene from the large VCF

module load GCC/13.3.0
module load VCFtools/0.1.17

VCF=/scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID.vcf.gz
OUT=/scratch/lh106/Dog_Selection/Fstscan_March52026/longhair_vcf_modern

vcftools --gzvcf ${VCF} --chr chr32 --from-bp 4509367 --to-bp 4509367 --recode --recode-INFO-all --out ${OUT}



scp -r lh106@nots.rice.edu:/scratch/lh106/Dog_Selection/Fstscan_March52026/longhair_vcf_ancientcanids.recode.vcf ~/Desktop

/scratch/lh106/Dog_Selection/Fstscan_March52026/longhair_vcf_ancientcanids.recode.vcf
