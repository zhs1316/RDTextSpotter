config=config/RDTS/totaltext_finetune.py
coco_path=datasets
task=0
checkpoint=totaltext.pth
test_dataset=totaltext_val
CUDA_VISIBLE_DEVICES=0 \
python main.py \
  --output_dir logs/RDTS/R50-MS4-%j \
	-c ${config} --coco_path ${coco_path}  \
	--task ${task} \
	--train_dataset totaltext_train \
	--val_dataset ${test_dataset} \
	--eval --resume ${checkpoint} \
	--options dn_scalar=100 embed_init_tgt=TRUE \
	dn_label_coef=1.0 dn_bbox_coef=1.0 use_ema=False \
	dn_box_noise_scale=1.0