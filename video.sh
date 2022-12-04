#!/bin/bash -l

#SBATCH --gres=gpu:4
#SBATCH --job-name=style_video
#SBATCH --output=/home/kpusteln/loads/style_video.txt
cd /home/kpusteln/stylegan-v/
conda activate video
srun python src/infra/launch.py hydra.run.dir=. exp_suffix=my_experiment_name env=local dataset=sky_timelapse dataset.resolution=256 num_gpus=4 model.generator.time_enc.min_period_len=256
