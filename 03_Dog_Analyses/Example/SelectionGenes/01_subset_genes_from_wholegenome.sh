#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/ak308/Bio310/output/vcfout.out 
#SBATCH --error=/home/ak308/Bio310/output/vcfout.err


module load GCC/13.3.0
module load VCFtools/0.1.17

VCF=/scratch/lh106/downloads/1715g_WildSled.SNP.INDEL.chrAll_minDP3_maxmissing0.8_noindels_bialleleic_minQ30_dogswolves_again_chrX_final.recode.vcf.gz
BEDIN=/scratch/lh106/bedfiles/TKTL1.bed
OUT=/scratch/ak308/Bio310_Dog/Results/TKTL1

vcftools --gzvcf ${VCF} --bed  ${BEDIN} --recode --recode-INFO-all --out ${OUT}

#########################
#How to make a bed file #
#########################

mkdir bedfiles
touch KRT71.bed
i
chrom   chromStart      chromEnd
chrX    122007282       122034255
[press escape]
:wq

#Copy and paste the gene location with tabs between 

# Move /scratch/lh106/downloads/1715g_WildSled.SNP.INDEL.chrAll_minDP3_maxmissing0.8_noindels_bialleleic_minQ30_dogswolves_again_chrX_final.recode_COPY.vcf.gz to your local scratch


