coco_path=$1
python main.py  -c config/RDTS/pretrain.py --coco_path $coco_path --output_dir logs/RDTS/R50-MS5_Pretrain \
        --train_dataset totaltext_train:ic13_train:ic15_train:mlt_train:syntext1_train:syntext2_train \
        --val_dataset totaltext_val \
        --options dn_scalar=100 embed_init_tgt=TRUE \
		dn_label_coef=1.0 dn_bbox_coef=1.0 use_ema=False \
		dn_box_noise_scale=1.0