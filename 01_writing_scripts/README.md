# Writing your first shell scripts

There is a specific way we run scripts on the cluster. These scripts tell the super computing cluster what to do and how to analyze the data. 

### Setting up directory 
```
mkdir Projects
cd Project
mkdir Bio310
cd Bio310
mkdir scripts
mkdir slurmout
cd scripts
```

### Here's an example script: 
- Made the script:
```
touch example.sh
```
- Look inside of the script:
```
vim example.sh
```
- Enter information
```
#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/lh106/Rice/logfiles/out.out 
#SBATCH --error=/home/lh106/Rice/logfiles/out.err

VCF=/scratch/lh106/results/Data_Katia_merged_phased_annotated.chr11_MAF_0.01_recalibrated_INFO_0.8.vcf
OUT=/scratch/lh106/AL2022_Turkey.vcf

grep "AL2022_Turkey" ${VCF} > ${OUT}
```

- Run script
```
sbatch example.sh
```
- Check script
```
squeue -u lh106 
```
- Check error file
```
less /home/lh106/Rice/logfiles/out.err
```








