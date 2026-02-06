




vcftools --gzvcf ${VCF} \
--minQ 30 \
--minDP 3 \
--max-missing 0.8 \
--chr ${CHR} \
--recode \
--recode-INFO-all \
--out ${DIR}/1715g_WildSled_SNP_INDEL_perSNP_fst_scan_minOct21_2025_minQ30_minDP3_maxmiss0.8_${CHR}
