#!/bin/bash --login

#SBATCH --job-name=BiCnetP

#SBATCH --output=logs/pretrain/out_bienc_bert_large_cnetp_no_mcrae_overlap_pretrain.txt
#SBATCH --error=logs/pretrain/err_bienc_bert_large_cnetp_no_mcrae_overlap_pretrain.txt

#SBATCH --tasks-per-node=5
#SBATCH --ntasks=5
#SBATCH --account scw1858

#SBATCH --partition gpu,gpu_v100
#SBATCH --gres=gpu:1
#SBATCH --mem=16G

#SBATCH --time 2-00:00:00

conda activate venv

python3 bienc_run_model.py --config_file configs/1_configs_pretrain/bienc_bert_large_cnetp_no_mcrae_overlap_pretrain.json

echo 'Job Finished!'
