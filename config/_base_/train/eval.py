training_args = dict(
    # run
    output_dir=None,  # required. must be filled by derived configs.
    overwrite_output_dir=False,
    report_to='none',
    seed=42,

    # datasets
    remove_unused_columns=False,

    # logging
    logging_steps=1,

    # eval and predict
    do_eval=True,
    do_predict=True,
    
    # train ddp
    tf32=False,
    bf16=False,
    fp16=True,
    bf16_full_eval=False,
    predict_with_generate=True,
    per_device_eval_batch_size=16,
    # dataloader_num_workers=4,
)
