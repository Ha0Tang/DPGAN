python train.py --name dpgan_ade --dataset_mode ade20k --dataroot ./datasets/ADEChallengeData2016 --niter 100 --niter_decay 100 --gpu_ids 0,1,2,3 --checkpoints_dir ./checkpoints --batchSize 16 --save_epoch_freq 5  --save_latest_freq 1000 
# --continue_train;
