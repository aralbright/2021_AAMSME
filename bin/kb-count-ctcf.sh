#!/bin/bash
# Key parameters
#SBATCH --account=fc_eisenlab
#SBATCH --partition=savio2
#SBATCH --time=24:00:00
#SBATCH --qos=savio_normal
#
# Process parameters
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24
#SBATCH --cpus-per-task=1
#
# Reporting parameters
#SBATCH --job-name=kb-insulator
#SBATCH --output=kb-insulator.out
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=aralbright@berkeley.edu
#
# Command(s) to run:

# Load Python into Savio

module load python/3.6

source activate py36sc

# Run Kallisto-bustools

# control
kb count -i /global/scratch/users/aralbright/insulator/bin/index.idx \
-g /global/scratch/users/aralbright/insulator/bin/t2g.txt \
-c1 /global/scratch/users/aralbright/insulator/bin/cdna_t2c.txt \
-c2 /global/scratch/users/aralbright/insulator/bin/intron_t2c.txt \
-x 10xv3 -o /global/scratch/users/aralbright/insulator/control-processed-mm -t 24 --verbose --nucleus --mm --h5ad --keep-tmp \
/global/scratch/users/aralbright/insulator/seq/AA4_6_S1_R1_001.fastq.gz /global/scratch/users/aralbright/insulator/seq/AA4_6_S1_R2_001.fastq.gz \
/global/scratch/users/aralbright/insulator/seq/AA4_6_S2_R1_001.fastq.gz /global/scratch/users/aralbright/insulator/seq/AA4_6_S2_R2_001.fastq.gz \
/global/scratch/users/aralbright/insulator/seq/AA4_6_S3_R1_001.fastq.gz /global/scratch/users/aralbright/insulator/seq/AA4_6_S3_R2_001.fastq.gz \
/global/scratch/users/aralbright/insulator/seq/AA4_6_S4_R1_001.fastq.gz /global/scratch/users/aralbright/insulator/seq/AA4_6_S4_R2_001.fastq.gz



# cp190
kb count -i /global/scratch/users/aralbright/insulator/bin/index.idx \
-g /global/scratch/users/aralbright/insulator/bin/t2g.txt \
-c1 /global/scratch/users/aralbright/insulator/bin/cdna_t2c.txt \
-c2 /global/scratch/users/aralbright/insulator/bin/intron_t2c.txt \
-x 10xv3 -o /global/scratch/users/aralbright/insulator/cp190-processed-mm -t 24 --verbose --nucleus --mm --h5ad --keep-tmp \
/global/scratch/users/aralbright/insulator/seq/AA4_8_S5_R1_001.fastq.gz /global/scratch/users/aralbright/insulator/seq/AA4_8_S5_R2_001.fastq.gz \
/global/scratch/users/aralbright/insulator/seq/AA4_8_S6_R1_001.fastq.gz /global/scratch/users/aralbright/insulator/seq/AA4_8_S6_R2_001.fastq.gz \
/global/scratch/users/aralbright/insulator/seq/AA4_8_S7_R1_001.fastq.gz /global/scratch/users/aralbright/insulator/seq/AA4_8_S7_R2_001.fastq.gz \
/global/scratch/users/aralbright/insulator/seq/AA4_8_S8_R1_001.fastq.gz /global/scratch/users/aralbright/insulator/seq/AA4_8_S8_R2_001.fastq.gz



# ctcf
kb count -i /global/scratch/users/aralbright/insulator/bin/index.idx \
-g /global/scratch/users/aralbright/insulator/bin/t2g.txt \
-c1 /global/scratch/users/aralbright/insulator/bin/cdna_t2c.txt \
-c2 /global/scratch/users/aralbright/insulator/bin/intron_t2c.txt \
-x 10xv3 -o /global/scratch/users/aralbright/insulator/ctcf-processed-mm -t 24 --verbose --nucleus --mm --h5ad --keep-tmp \
/global/scratch/users/aralbright/insulator/seq/AA4_9_S9_R1_001.fastq.gz /global/scratch/users/aralbright/insulator/seq/AA4_9_S9_R2_001.fastq.gz \
/global/scratch/users/aralbright/insulator/seq/AA4_9_S10_R1_001.fastq.gz /global/scratch/users/aralbright/insulator/seq/AA4_9_S10_R2_001.fastq.gz \
/global/scratch/users/aralbright/insulator/seq/AA4_9_S11_R1_001.fastq.gz /global/scratch/users/aralbright/insulator/seq/AA4_9_S11_R2_001.fastq.gz \
/global/scratch/users/aralbright/insulator/seq/AA4_9_S12_R1_001.fastq.gz /global/scratch/users/aralbright/insulator/seq/AA4_9_S12_R2_001.fastq.gz
