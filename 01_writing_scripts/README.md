# Writing your first shell scripts

There is a specific way we run scripts on the cluster. These scripts tell the super computing cluster what to do and how to analyze the data. 

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

cat V300066577_L2_DKWGS201203039-531_1.fq.gz V300066577_L2_DKWGS201203039-532_1.fq.gz V300074477_L1_DKWGS201203039-531_1.fq.gz V300074477_L1_DKWGS201203039-532_1.fq.gz V300074519_L4_DKWGS201203039-531_1.fq.gz V300074519_L4_DKWGS201203039-532_1.fq.gz > Africanwolf_Algeria_MJ109_1.fq.gz
cat V300066577_L2_DKWGS201203039-531_2.fq.gz V300066577_L2_DKWGS201203039-532_2.fq.gz V300074477_L1_DKWGS201203039-531_2.fq.gz V300074477_L1_DKWGS201203039-532_2.fq.gz V300074519_L4_DKWGS201203039-531_2.fq.gz V300074519_L4_DKWGS201203039-532_2.fq.gz > Africanwolf_Algeria_MJ109_2.fq.gz
```

