#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/yourname/Rice/Dog_Selection/slurmout/plink.out 
#SBATCH --error=/home/yourname/Rice/Dog_Selection/slurmout/plink.err

scratch/lh106/Dog_Selection/Results/TKTL1

OUT=/scratch/yourID/Dog_Selection/Results/TKTL1.recode.vcf
OUTBED=/scratch/Dog_Selection/Results/TKTL1_bed
OUTPLINK=/scratch/Dog_Selection/Results/TKTL1_plink
OUTVCF_final=/scratch/Dog_Selection/Results/TKTL1_plink_finalcoded

/home/ak/software/plink --vcf ${VCF} --make-bed --const-fid --dog --out ${OUTBED} #to sort the chromosomes
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

##### Convert vcf to coding ######
sed -i 's:0/0:0:g' TKTL1_plink_finalcoded.vcf
sed -i 's:0/1:1:g' TKTL1_plink_finalcoded.vcf
sed -i 's:1/0:1:g' TKTL1_plink_finalcoded.vcf
sed -i 's:1/1:2:g' TKTL1_plink_finalcoded.vcf
sed -i 's:./.:3:g' TKTL1_plink_finalcoded.vcf


### Move to local computer 
scp -r lh106@nots.rice.edu:/scratch/Dog_Selection/results/TKTL1_plink_finalcoded.vcf ~/Desktop
