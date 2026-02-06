#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/lh106/Rice/Dog_Selection/slurmout/plink.out 
#SBATCH --error=/home/lh106/Rice/Dog_Selection/slurmout/plink.err

OUT=/scratch/yourID/results_chrX/KRT71_vcf.recode.vcf
OUTBED=/scratch/Dog_Selection/results/KRT71_bed
OUTPLINK=/scratch/Dog_Selection/results/KRT71_plink
OUTVCF_final=/scratch/Dog_Selection/results/KRT71_plink_finalcoded

/home/lh106/software/plink --vcf ${VCF} --make-bed --const-fid --dog --out ${OUTBED} #to sort the chromosomes
/home/lh106/software/plink --bfile ${OUTBED} --recode --out ${OUTPLINK} --const-fid --dog
/home/lh106/software/plink --file  ${OUTPLINK} --recode vcf --out ${OUTVCF_final} --const-fid --dog

## might also have to download plink 
cd /home/yourID
mkdir software
cd software
wget https://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20250819.zip
unzip plink_linux_x86_64_20250819.zip
#test
./plink





