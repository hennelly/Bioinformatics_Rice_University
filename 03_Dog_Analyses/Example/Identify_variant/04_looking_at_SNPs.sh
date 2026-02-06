
#!/bin/bash 
#SBATCH --job-name=combine 
#SBATCH --account=commons 
#SBATCH --partition=commons 
#SBATCH --ntasks=1 
#SBATCH --mem-per-cpu=1000m 
#SBATCH --time=00:30:00 
#SBATCH --output=/home/yourname/Rice/Dog_Selection/slurmout/plink.out 
#SBATCH --error=/home/yourname/Rice/Dog_Selection/slurmout/plink.err

FILE=/scratch/yourID/Dog_Selection/Results/KRT71_filtered_fst_noNAN_results.weir.fst.txt
OUTFILE=/scratch/yourID/Dog_Selection/Results/KRT71_filtered_fst_noNAN_results_sort.weir.fst.txt

sort -k3,3nr ${OUTFILE} > ${OUTFILE}

wc -l ${$OUTFILE}

### Move to local computer 
scp -r lh106@nots.rice.edu:/scratch/yourID/Dog_Selection/Results/KRT71_filtered_fst_noNAN_results_sort.weir.fst.txt ~/Desktop
