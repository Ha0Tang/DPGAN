#python train.py --name pooling4_deepfashion --dataset_mode deepfashion --label_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/train_label --label_nc 20 --no_instance --image_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/train_img  --niter 50 --niter_decay 50 --gpu_ids 0,1,2,3 --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 16 --save_epoch_freq 5  --save_latest_freq 1000 --continue_train;

python test.py --name pooling4_deepfashion --dataset_mode deepfashion --label_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_label --label_nc 20 --no_instance --image_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_img --gpu_ids 0 --results_dir /data/engs-tvg/engs1993/SPADE_results --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 1 --which_epoch 100;
python test.py --name pooling4_deepfashion --dataset_mode deepfashion --label_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_label --label_nc 20 --no_instance --image_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_img --gpu_ids 0 --results_dir /data/engs-tvg/engs1993/SPADE_results --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 1 --which_epoch 95;
python test.py --name pooling4_deepfashion --dataset_mode deepfashion --label_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_label --label_nc 20 --no_instance --image_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_img --gpu_ids 0 --results_dir /data/engs-tvg/engs1993/SPADE_results --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 1 --which_epoch 90;
python test.py --name pooling4_deepfashion --dataset_mode deepfashion --label_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_label --label_nc 20 --no_instance --image_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_img --gpu_ids 0 --results_dir /data/engs-tvg/engs1993/SPADE_results --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 1 --which_epoch 85;
python test.py --name pooling4_deepfashion --dataset_mode deepfashion --label_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_label --label_nc 20 --no_instance --image_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_img --gpu_ids 0 --results_dir /data/engs-tvg/engs1993/SPADE_results --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 1 --which_epoch 80;
python test.py --name pooling4_deepfashion --dataset_mode deepfashion --label_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_label --label_nc 20 --no_instance --image_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_img --gpu_ids 0 --results_dir /data/engs-tvg/engs1993/SPADE_results --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 1 --which_epoch 75;
python test.py --name pooling4_deepfashion --dataset_mode deepfashion --label_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_label --label_nc 20 --no_instance --image_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_img --gpu_ids 0 --results_dir /data/engs-tvg/engs1993/SPADE_results --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 1 --which_epoch 70;
python test.py --name pooling4_deepfashion --dataset_mode deepfashion --label_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_label --label_nc 20 --no_instance --image_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_img --gpu_ids 0 --results_dir /data/engs-tvg/engs1993/SPADE_results --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 1 --which_epoch 65;
python test.py --name pooling4_deepfashion --dataset_mode deepfashion --label_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_label --label_nc 20 --no_instance --image_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_img --gpu_ids 0 --results_dir /data/engs-tvg/engs1993/SPADE_results --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 1 --which_epoch 60;
python test.py --name pooling4_deepfashion --dataset_mode deepfashion --label_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_label --label_nc 20 --no_instance --image_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_img --gpu_ids 0 --results_dir /data/engs-tvg/engs1993/SPADE_results --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 1 --which_epoch 55;
python test.py --name pooling4_deepfashion --dataset_mode deepfashion --label_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_label --label_nc 20 --no_instance --image_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_img --gpu_ids 0 --results_dir /data/engs-tvg/engs1993/SPADE_results --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 1 --which_epoch 50;
python test.py --name pooling4_deepfashion --dataset_mode deepfashion --label_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_label --label_nc 20 --no_instance --image_dir /data/engs-tvg/engs1993/SPADE/datasets/deepfashion/val_img --gpu_ids 0 --results_dir /data/engs-tvg/engs1993/SPADE_results --checkpoints_dir /data/engs-tvg/engs1993/checkpoints --batchSize 1 --which_epoch 45;
