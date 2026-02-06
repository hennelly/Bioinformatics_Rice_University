#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=10:30:00 
#SBATCH --output=/home/lh106/Rice/logfiles/move.out 
#SBATCH --error=/home/lh106/Rice/logfiles/move.err

cp g_WildSled.SNP.INDEL.chrAll.newID.vcf.gz /scratch/lh106/SharedData/1697canidVCF/g_WildSled.SNP.INDEL.chrAll.newID_copy.vcf.gz

