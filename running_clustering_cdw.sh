export PYTHONPATH=$PYTHONPATH:$pwd
srun -u --partition=Sensetime --job-name=clu_cdw \
    -n1 --gres=gpu:1 --ntasks-per-node=1 \
    python  main.py --data_dir /mnt/lustre/ganxin/fedreid_data/data --train_all --clustering --cdw | tee fed_reid_clustering_cdw_cpk.log &