#!/bin/bash

echo "Activate the environments and change work directory"
source /Users/Project/wave_prediction/Time-series-prediction
echo "start parameter tuning"

# Define arrays of parameter values
batch_size_values=(50 100 200)
learning_rate_values=(0.0001 0.0003 0.0005 0.0008 0.001)

# Loop through parameter combinations
for batch_size in "${batch_size_values[@]}"; do
  for learning_rate in "${learning_rate_values[@]}"; do
    echo "Testing the proposed model with n_epochs=${n_epochs}, batch_size=${batch_size}, learning_rate=${learning_rate}"
    python3 run_quantile_prediction.py \
      --use_model="qlb_gru" \
      --n_epochs="${n_epochs}" \
      --batch_size="${batch_size}" \
      --learning_rate="${learning_rate}" \
      --save_mode=1
  done
done

echo "End the parameter tuning process"
