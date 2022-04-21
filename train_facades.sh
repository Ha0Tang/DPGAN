#python train.py --name pooling4_facades --dataset_mode facades --dataroot /data/engs-tvg/engs1870/SPADE/datasets/facades --niter 50 --niter_decay 50 --gpu_ids 0,1,2,3 --checkpoints_dir /data/engs-tvg/engs1870/checkpoints --batchSize 8 --save_epoch_freq 5  --save_latest_freq 1000 
#--continue_train;


python test.py --name pooling4_facades --dataset_mode facades --dataroot ./datasets/facades --gpu_ids 0 --results_dir /home/htang/projects/SPADE_results --checkpoints_dir ./checkpoints --batchSize 1 --which_epoch 95;
python test.py --name pooling4_facades --dataset_mode facades --dataroot ./datasets/facades --gpu_ids 0 --results_dir /home/htang/projects/SPADE_results --checkpoints_dir ./checkpoints --batchSize 1 --which_epoch 90;
python test.py --name pooling4_facades --dataset_mode facades --dataroot ./datasets/facades --gpu_ids 0 --results_dir /home/htang/projects/SPADE_results --checkpoints_dir ./checkpoints --batchSize 1 --which_epoch 85;
python test.py --name pooling4_facades --dataset_mode facades --dataroot ./datasets/facades --gpu_ids 0 --results_dir /home/htang/projects/SPADE_results --checkpoints_dir ./checkpoints --batchSize 1 --which_epoch 80;
python test.py --name pooling4_facades --dataset_mode facades --dataroot ./datasets/facades --gpu_ids 0 --results_dir /home/htang/projects/SPADE_results --checkpoints_dir ./checkpoints --batchSize 1 --which_epoch 75;
python test.py --name pooling4_facades --dataset_mode facades --dataroot ./datasets/facades --gpu_ids 0 --results_dir /home/htang/projects/SPADE_results --checkpoints_dir ./checkpoints --batchSize 1 --which_epoch 70;
python test.py --name pooling4_facades --dataset_mode facades --dataroot ./datasets/facades --gpu_ids 0 --results_dir /home/htang/projects/SPADE_results --checkpoints_dir ./checkpoints --batchSize 1 --which_epoch 65;
python test.py --name pooling4_facades --dataset_mode facades --dataroot ./datasets/facades --gpu_ids 0 --results_dir /home/htang/projects/SPADE_results --checkpoints_dir ./checkpoints --batchSize 1 --which_epoch 60;
python test.py --name pooling4_facades --dataset_mode facades --dataroot ./datasets/facades --gpu_ids 0 --results_dir /home/htang/projects/SPADE_results --checkpoints_dir ./checkpoints --batchSize 1 --which_epoch 55;
python test.py --name pooling4_facades --dataset_mode facades --dataroot ./datasets/facades --gpu_ids 0 --results_dir /home/htang/projects/SPADE_results --checkpoints_dir ./checkpoints --batchSize 1 --which_epoch 50;
