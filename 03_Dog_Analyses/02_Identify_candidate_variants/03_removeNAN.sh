#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/ak308/Bio310/output/removeNAN.out 
#SBATCH --error=/home/ak308/Bio310/output/removeNAN.err

FILE=

sed '/n/d' ${FILE} >  ${DIR}/1715g_WildSled_SNP_INDEL_perSNP_fst_scan_minOct21_2025_minQ30_minDP3_maxmiss0.8_nonan.weir.fst.txt
