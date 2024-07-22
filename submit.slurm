#!/bin/bash
#SBATCH --nodes=2
#SBATCH --cpus-per-task=20
#SBATCH --ntasks=2
#SBATCH --gres=gpu:2
#SBATCH --gres-flags=enforce-binding
#SBATCH --time=23:59:59

#SBATCH -c 20
#SBATCH --mem=500G
#SBATCH --constraint="gpu80"

#SBATCH --output=slurm_logs/%j.txt
#SBATCH --job-name=SYNGEN

#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user ra578108@ucf.edu


echo CUDA_VISIBLE_DEVICES=$CUDA_VISIBLE_DEVICES
nvidia-smi

bash /home/rshodeinde/NExT-Chat/run_stage1.sh