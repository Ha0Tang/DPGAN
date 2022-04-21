#python train.py --name dpgan_facades --dataset_mode facades --dataroot ./datasets/facades --niter 50 --niter_decay 50 --gpu_ids 0,1,2,3 --checkpoints_dir ./checkpoints --batchSize 8 --save_epoch_freq 5  --save_latest_freq 1000 
#--continue_train;

python test.py --name dpgan_facades --dataset_mode facades --dataroot ./datasets/facades --gpu_ids 0 --results_dir ./results --checkpoints_dir ./checkpoints --batchSize 1 --which_epoch 100;
