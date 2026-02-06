#!/usr/bin/env bash
#SBATCH --job-name=intersect
#SBATCH -c 1
#SBATCH --time 1-02:10:00
#SBATCH --mem-per-cpu 50G
#SBATCH -o /home/crq857/projects/Redwolf/slurmout/intersect.out
#SBATCH -e /home/crq857/projects/Redwolf/slurmout/intersect.err


module load perl
module load gsl/2.5
module load bcftools

cd /projects/psg/people/crq857/TSHR_Oct2025/01_Reprogenes_scan/candidate_genes 
sort -k3,3nr 1715g_WildSled_SNP_INDEL_perSNP_fst_scan_minOct21_2025_minQ30_minDP3_maxmiss0.8_nonan.weir.fst.txt > 1715g_WildSled_SNP_INDEL_perSNP_fst_scan_minOct21_2025_minQ30_minDP3_maxmiss0.8_nonan.weir.fst_sort.txt

wc -l 1715g_WildSled_SNP_INDEL_perSNP_fst_scan_minOct21_2025_minQ30_minDP3_maxmiss0.8_nonan.weir.fst_sort.txt
#64281937 total sites including the X chromosome

