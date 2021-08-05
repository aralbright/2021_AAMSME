#!/bin/bash
# Key parameters
#SBATCH --account=fc_eisenlab
#SBATCH --partition=savio2
#SBATCH --time=08:00:00
#SBATCH --qos=savio_normal
#
# Process parameters
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24
#SBATCH --cpus-per-task=1
#
# Reporting parameters
#SBATCH --job-name=kbref
#SBATCH --output=kbref.out
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=aralbright@berkeley.edu
#
# Command(s) to run:

#Change directory

cd /global/scratch/users/aralbright/insulator/bin

#Load python and conda env

module load python/3.6

conda activate py36sc

# Run kb ref
kb ref -i index.idx -g t2g.txt -f1 cdna.fa -f2 intron.fa \
-c1 cdna_t2c.txt -c2 intron_t2c.txt --workflow nucleus \
/global/scratch/users/aralbright/insulator/bin/Drosophila_melanogaster.BDGP6.32.dna.toplevel.fa.gz /global/scratch/users/aralbright/insulator/bin/Drosophila_melanogaster.BDGP6.32.103.gtf.gz
