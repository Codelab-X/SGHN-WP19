#!/bin/bash

echo "Activate the environments and change work directory"
source /Users/Project/wave_prediction/Time-series-prediction
echo "start best parameter testing"

echo "Testing the proposed model"
python3 run_quantile_prediction.py \
  --use_model="qlb_gru" \
  --n_epochs=50 \
  --batch_size=100 \
  --learning_rate=0.0005 \
  --save_mode=1 \

echo "End the testing process"

echo "Testing the seq2seq model"
python3 run_quantile_prediction.py \
  --use_model="seq2seq" \
  --n_epochs=50 \
  --batch_size=100 \
  --learning_rate=0.0003 \
  --save_mode=1 \

echo "End the testing process"

echo "Testing the tfm model"
python3 run_quantile_prediction.py \
  --use_model="tfm" \
  --n_epochs=50 \
  --batch_size=50 \
  --learning_rate=0.0003 \
  --save_mode=1 \

echo "End the testing process"

echo "Testing the tcn model"
python3 run_quantile_prediction.py \
  --use_model="tcn" \
  --n_epochs=50 \
  --batch_size=100 \
  --learning_rate=0.001 \
  --save_mode=1 \

echo "End the testing process"

echo "Testing the multi-lstm model"
python3 run_quantile_prediction.py \
  --use_model="multi-lstm" \
  --n_epochs=50 \
  --batch_size=100 \
  --learning_rate=0.0008 \
  --save_mode=1 \

echo "End the testing process"

echo "Testing the bi-rnn model"
python3 run_quantile_prediction.py \
  --use_model="bi-rnn" \
  --n_epochs=50 \
  --batch_size=200 \
  --learning_rate=0.0005 \
  --save_mode=1 \

echo "End the testing process"