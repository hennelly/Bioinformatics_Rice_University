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

VCF=/scratch/yourID/Dog_Selection/Results/TKTL1_filtered.recode.vcf
DIR=/scratch/yourID/Dog_Selection/Results
dogpop_curly=/scratch/yourID/Dog_Selection/Files/KRT71_curlydogs.txt
dogpop_noncurly=/scratch/yourID/Dog_Selection/Files/KRT71_noncurlydogs.txt

vcftools --gzvcf ${VCF} \
--minQ 30 \
--minDP 3 \
--max-missing 0.8 \
--weir-fst-pop ${dogpop_curly} \
--weir-fst-pop ${dogpop_noncurly} \
--out ${OUT}/TKTL1_filtered_fst_results

## Make the dog population files 
touch /scratch/yourID/Dog_Selection/Files/KRT71_curlydogs.txt
# copy and paste the names of the dogs in the VCF file that have curly hair 
touch /scratch/yourID/Dog_Selection/Files/KRT71_noncurlydogs.txt
# copy and paste the names of the dogs in the VCf file that do not have curly hair 
