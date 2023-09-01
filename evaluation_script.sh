PREFIX=$1
TEMP=$2
FILE=$3

python main.py --use_auth_token --trust_remote_code --tasks apps-introductory-cfstyle --batch_size 30 --n_samples 30     --max_length_generation 2048 --precision bf16 --allow_code_execution --temperature $TEMP --load_generations_path $FILE --metric_output_path "evaluation_results_${PREFIX}_${TEMP}.json"