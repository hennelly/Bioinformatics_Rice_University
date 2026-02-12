#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/ak308/Bio310/output/plink.out 
#SBATCH --error=/home/ak308/Bio310/output/plink.err

module load GCC/13.3.0
module load VCFtools/0.1.17

VCF=/scratch/ak308/Dog_Selection/Results/KRT71_filtered.recode.vcf
DIR=/scratch/ak308/Dog_Selection/Results
dogpop_curly=/ak308/yourID/Dog_Selection/Files/KRT71_curlydogs.txt
dogpop_noncurly=/ak308/yourID/Dog_Selection/Files/KRT71_noncurlydogs.txt

vcftools --gzvcf ${VCF} \
--minQ 30 \
--minDP 3 \
--max-missing 0.8 \
--weir-fst-pop ${dogpop_curly} \
--weir-fst-pop ${dogpop_noncurly} \
--out ${OUT}/KRT71_filtered_fst_results

## Make the dog population files 
touch /scratch/yourID/Dog_Selection/Files/KRT71_curlydogs.txt
# copy and paste the names of the dogs in the VCF file that have curly hair 
touch /scratch/yourID/Dog_Selection/Files/KRT71_noncurlydogs.txt
# copy and paste the names of the dogs in the VCf file that do not have curly hair 
