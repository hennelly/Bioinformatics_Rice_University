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





vcftools --gzvcf ${VCF} \
--minQ 30 \
--minDP 3 \
--max-missing 0.8 \
--chr ${CHR} \
--recode \
--recode-INFO-all \
--out ${DIR}/1715g_WildSled_SNP_INDEL_perSNP_fst_scan_minOct21_2025_minQ30_minDP3_maxmiss0.8_${CHR}
