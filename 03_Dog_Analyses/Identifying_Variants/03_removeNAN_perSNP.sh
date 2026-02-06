#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/lh106/Rice/Dog_Selection/slurmout/plink.out 
#SBATCH --error=/home/lh106/Rice/Dog_Selection/slurmout/plink.err

FILE=/scratch/yourID/Dog_Selection/Results/KRT71_filtered_fst_results.weir.fst.txt
DIR=/scratch/yourID/Dog_Selection/Results/KRT71_filtered_fst_noNAN_results.weir.fst.txt
sed '/n/d' ${FILE} >  ${DIR}/1715g_WildSled_SNP_INDEL_perSNP_fst_scan_minOct21_2025_minQ30_minDP3_maxmiss0.8_nonan.weir.fst.txt

