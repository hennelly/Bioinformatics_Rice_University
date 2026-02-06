


vcftools --gzvcf ${VCF} \
--minQ 30 \
--minDP 3 \
--max-missing 0.8 \
--weir-fst-pop ${dogpop} \
--weir-fst-pop ${wolfpop} \
--out ${OUT}/1715g_WildSled_SNP_INDEL_perSNP_fst_scan_minOct22_final_2025_minQ30_minDP3_Oct23_2025_maxmiss0.8.vcf
