#!/bin/bash --login

#SBATCH --job-name=llama3_facet_prop

#SBATCH --output=logs/embeds_for_commonalities/out_run5_llama3_commonsense_facet_prop_embeddings.txt
#SBATCH --error=logs/embeds_for_commonalities/err_run5_llama3_commonsense_facet_prop_embeddings.txt

#SBATCH --tasks-per-node=5
#SBATCH --ntasks=5
#SBATCH -A scw1858

#SBATCH -p gpu_v100,gpu
#SBATCH --gres=gpu:1

#SBATCH --mem=12G
#SBATCH -t 0-02:00:00

conda activate venv

python3 get_embeds_and_train_data.py --config_file configs/commonality_llama/11_llama3_commonsense_facet_property_blent_bienc_cnetpchatgpt.json

echo 'Job Finished !!!'
