coco_path=datasets
python main.py  -c config/RDTS/tt_finetune.py --coco_path $coco_path --output_dir logs/RDTS/tt_finetune \
        --train_dataset totaltext_train \
        --val_dataset totaltext_val \
        --pretrain_model_path totaltext.pth \
        --options dn_scalar=100 embed_init_tgt=TRUE \
	dn_label_coef=1.0 dn_bbox_coef=1.0 use_ema=False \
	dn_box_noise_scale=1.0
