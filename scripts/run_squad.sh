generalization_type=none # choose dense or mix or none
model_name=bert-base-uncased 
gpu_id=0

subnetwork_pro=0.3
update_ratio=0.05
dataset_name=squad
num_epochs=3
seed=666

TF_ENABLE_ONEDNN_OPTS=0 CUDA_VISIBLE_DEVICES=${gpu_id} python run_qa.py \
--model_name_or_path ${model_name} \
--dataset_name ${dataset_name} \
--do_train \
--do_eval \
--max_seq_length 384 \
--per_device_train_batch_size 16 \
--learning_rate 3e-5 \
--save_steps 30000 \
--evaluation_strategy epoch \
--num_train_epochs ${num_epochs} \
--doc_stride 128 \
--warmup_ratio 0.1 \
--weight_decay 0.01 \
--fp16 \
--overwrite_output_dir True \
--output_dir ./output_qa/${generalization_type} \
--seed ${seed} \
--reserve_p ${subnetwork_pro} \
--generalization_type ${generalization_type} \
--update_ratio ${update_ratio} \
--report_to none
