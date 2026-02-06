#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/lh106/Rice/Dog_Selection/slurmout/plink.out 
#SBATCH --error=/home/lh106/Rice/Dog_Selection/slurmout/plink.err

FILE=/scratch/yourID/Dog_Selection/Results/TKTL1_filtered_fst_results.weir.fst.txt
DIR=/scratch/yourID/Dog_Selection/Results/TKTL1_filteredfst_noNAN_results.weir.fst.txt

sed '/n/d' ${FILE} >  ${DIR}/TKTL1_filtered_nonan.weir.fst.txt
