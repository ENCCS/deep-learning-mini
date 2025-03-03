#! /bin/bash
#SBATCH -A tra25_castiel2
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mem=100000
#SBATCH --time=05:00:00
#SBATCH -p boost_usr_prod
#SBATCH -J jupyter

module load profile/deeplrn
module load cineca-ai/4.3.0

python 1_DL_test.py

jupyter notebook --no-browser

