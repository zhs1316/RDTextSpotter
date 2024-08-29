coco_path=$1
python main.py  -c config/RDTS/joint_train.py --coco_path $coco_path --output_dir logs/RDTS/R50-MS5_Joint_train \
        --train_dataset totaltext_train:ic13_train:ic15_train \
        --val_dataset totaltext_val \
        --pretrain_model_path pretrain.pth \
        --options dn_scalar=100 embed_init_tgt=TRUE \
	dn_label_coef=1.0 dn_bbox_coef=1.0 use_ema=False \
	dn_box_noise_scale=1.0