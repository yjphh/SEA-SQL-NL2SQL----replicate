db_root_path='./data/dev/dev_databases/'
diff_json_path='./data/dev/dev.json'
ground_truth_path='./data/dev/'
predicted_sql_path_kg='./intermediate_datasets/'
data_mode='dev'
num_cpus=20
meta_time_out=30.0
mode_gt='gt'
mode_predict='gpt'

echo '''============= Spider 执行准确率评估 ============='''
python3 -u ./evaluate/evaluation.py --db_root_path ${db_root_path} --predicted_sql_path ${predicted_sql_path_kg} --data_mode ${data_mode} \
--ground_truth_path ${ground_truth_path} --num_cpus ${num_cpus} --mode_gt ${mode_gt} --mode_predict ${mode_predict} \
--diff_json_path ${diff_json_path} --meta_time_out ${meta_time_out}