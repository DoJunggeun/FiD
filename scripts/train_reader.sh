#!/opt/conda/envs/fid-debug/bin/python
ROOT_DIR="/home/j2/projects"

python "$ROOT_DIR/FiD/train_reader.py" \
    --train_data "$ROOT_DIR/FiD/open_domain_data/NQ/test.json" \
    --eval_data "$ROOT_DIR/FiD/open_domain_data/NQ/dev.json" \
    --use_checkpoint \
    --lr 0.00005 \
    --optim adamw \
    --scheduler linear \
    --weight_decay 0.01 \
    --text_maxlength 250 \
    --per_gpu_batch_size 1 \
    --n_context 2 \
    --total_step 15000 \
    --warmup_step 1000
