#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/yourname/Rice/Dog_Selection/slurmout/vcfout.out 
#SBATCH --error=/home/yourname/Rice/Dog_Selection/slurmout/vcfout.err

# Grab the THSR gene and the TKTL1 haplotype
# do dxy fst within the TKTL1 haplotype

module load GCC/13.3.0
module load VCFtools/0.1.17

VCF=/scratch/lh106/downloads/1715g_WildSled.SNP.INDEL.chrAll_minDP3_maxmissing0.8_noindels_bialleleic_minQ30_dogswolves_again_chrX_final.recode.vcf.gz
BEDIN=/scratch/lh106/bedfiles/TKTL1.bed
OUT=/scratch/lh106/Dog_Selection/Results/TKTL1

vcftools --gzvcf ${VCF} --bed  ${BEDIN} --recode --recode-INFO-all --out ${OUT}

#########################
#How to make a bed file #
#########################

/scratch/yourID/ 
mkdir bedfiles
touch TKTL1.bed
vim TKTL1.bed

chrom   chromStart      chromEnd
chrX    122007282       122034255

#Copy and paste the gene location with tabs between 

# Move /scratch/lh106/downloads/1715g_WildSled.SNP.INDEL.chrAll_minDP3_maxmissing0.8_noindels_bialleleic_minQ30_dogswolves_again_chrX_final.recode_COPY.vcf.gz to your local scratch


