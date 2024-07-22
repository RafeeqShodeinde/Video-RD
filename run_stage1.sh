accelerate launch --num_processes 2 \
        --main_process_port 23786 \
        mllm/pipeline/finetune.py \
        config/nextchat_stage1_deepspeed.py \
        --cfg-options model_args.model_name_or_path=/home/rshodeinde/NExT-Chat/weights/vicuna-7b-v1.5 \
        model_args.mm_projector_depth=2 \
        --num_train_epochs 2 \
        --output_dir ./output/stage1