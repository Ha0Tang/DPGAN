#python train.py --name SPADE_StripPooling_cat_twolayer_ppooling --dataset_mode cityscapes --dataroot /data/engs-tvg/engs1870/SPADE/datasets/Cityscapes/data --niter 100 --niter_decay 100 --gpu_ids 0 --checkpoints_dir /data/engs-tvg/engs1870/checkpoints --batchSize 8 --save_epoch_freq 5  --save_latest_freq 1000 
#--continue_train;

#python train.py --name SPADE_StripPooling_cat_twolayer_ppooling4 --dataset_mode cityscapes --dataroot /data/engs-tvg/engs1993/SPADE/datasets/Cityscapes/data --niter 100 --niter_decay 100 --gpu_ids 0 --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 4 --save_epoch_freq 5  --save_latest_freq 1000 --continue_train;

python train.py --name SPADE_StripPooling_cat_twolayer_ppooling4_ade --dataset_mode ade20k --dataroot /data/engs-tvg/engs1993/SPADE/datasets/ADEChallengeData2016 --niter 100 --niter_decay 100 --gpu_ids 0,1,2,3 --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 16 --save_epoch_freq 5  --save_latest_freq 1000 --continue_train;
