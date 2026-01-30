# File types

- A fastq.gz file contains the raw reads that are not aligned to the reference genome. Let's see what a fastq.gz file looks like:

```
less /scratch/lh106/rawfiles/V300066577_L2_DKWGS201203039-531_1.fq.gz
```

- A bam file is called a Binary Alignment Map and it is a file where the reads of an individual are aligned to a reference genome. So we know where each read goes on the genome.

```
module load SAMtools/1.19.2
samtools view Projects_CPH_Chapter2_bams_S21_1038_Chitral_sorted_proper_nodups_readgroup.bam | less -S
```

- A variant call format (VCF) file contains the variants along the genome for a single individual, or multiple individuals.
```
less -S /storage/hpc/work/lh106/SharedData/AncientimputedVCF/Data_Katia_merged_phased_annotated.chr11_MAF_0.01_recalibrated_INFO_0.8.vcf
```




